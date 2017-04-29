from django.http import HttpResponse
from django.shortcuts import render
from mainApp.models import Authors
from mainApp.models import Books
from mainApp.models import Catergory

def category(request):
    cat = Catergory.objects.all()
    print("cats", cat)
    return render(request, template_name='library/header.html', context={"category":cat})


def category_books(request, cat_id):
    params ={}
    cat = Catergory.objects.filter()
    return render(request, template_name='library/header.html', context={"category":cat})