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
    params ={}
    cat = Catergory.objects.filter(id=cat_id)
    return HttpResponse(cat)
    # return render(request, template_name='library/header.html', context={"category":cat})
