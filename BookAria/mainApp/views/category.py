from django.http import HttpResponse
from django.shortcuts import render
from mainApp.models import Authors
from mainApp.models import Books
from mainApp.models import Catergory

def category(request):
    params = {}
    params['category'] = Catergory.objects.all()
    return render(request, template_name='library/categories.html', context=params)


def category_books(request, cat_id):
    params ={}
    cat = Catergory.objects.filter()
    return render(request, template_name='library/header.html', context={"category":cat})