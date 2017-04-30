from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.http import JsonResponse
from django.shortcuts import render
from mainApp.models import Authors
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
    cat = Catergory.objects.filter(id=cat_id)

    # print("category", cat.cat_name)

    print("categories", cat_id)
    # return HttpResponse(cat)
    # return render(res, template_name='library/categories.html' )

    cat_books = Books.objects.filter(category_id=cat_id)
    return render(request, 'library/categories.html', {"books":cat_books})
