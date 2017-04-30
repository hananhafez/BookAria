from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.shortcuts import render
from django.shortcuts import redirect
from django.contrib.auth.models import User
from mainApp.models import Authors
from mainApp.models import Favourites
from mainApp.models import Books
from mainApp.models import Catergory
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder

@login_required(login_url='/signin/')
def list(request):
    cat = Catergory.objects.all()
    print("categories" , cat)
    cats=[]
    for obj in cat:
    	cats.append(obj.as_dict())
    return JsonResponse(cats,safe=False)

@login_required(login_url='/signin/')
def category_books(request, cat_id):
    cat = Catergory.objects.get(pk=cat_id)
    # print("category", cat.cat_name)
    # return HttpResponse(cat)
    # return render(res, template_name='library/categories.html' )
    isFavorite = Favourites.objects.filter(user_id=request.user.id,category_id=cat_id)
    if len(isFavorite) == 0:
        isFavorite = False
    else:
        isFavorite = True
    print(isFavorite)
    cat_books = Books.objects.filter(category_id=cat_id)
    return render(request, 'library/categories.html', {"books":cat_books,"category":cat,"isfavorite":isFavorite})

@login_required(login_url='/signin/')
def AddToFavorite(request, cat_id):
    currentUser = User.objects.get(pk=request.user.id)
    category = Catergory.objects.get(pk=cat_id)
    AddFavorite = Favourites.objects.create(user_id=currentUser,category_id=category)
    AddFavorite.save();
    return redirect(request.META['HTTP_REFERER'])

@login_required(login_url='/signin/')
def removeFromFavorite(request, cat_id):
    Favourites.objects.get(user_id=request.user.id,category_id=cat_id).delete()
    return redirect(request.META['HTTP_REFERER'])
