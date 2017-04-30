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
    cats = []
    for obj in cat:
    	cats.append(obj.as_dict())
    return JsonResponse(cats,safe=False)

def category_books(request, cat_id):
    cat_books = Books.objects.filter(category_id=cat_id)
    return render(request, 'library/categories.html', {"books":cat_books})
