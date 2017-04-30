from django.http import HttpResponse
from django.http import JsonResponse
from django.shortcuts import render
from mainApp.models import Authors
from mainApp.models import Books
from mainApp.models import Catergory
from django.core import serializers
from django.core.serializers.json import DjangoJSONEncoder

def list(request):
    cat = Catergory.objects.all()
    cats=[]
    for obj in cat:
    	cats.append(obj.as_dict())
    return JsonResponse(cats,safe=False)

def category_books(request, cat_id):
    params ={}
    cat = Catergory.objects.filter(id=cat_id)
    return HttpResponse(cat)
    # return render(request, template_name='library/header.html', context={"category":cat})