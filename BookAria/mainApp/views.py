# Django
from django.shortcuts import get_object_or_404
from django.shortcuts import render

# local Django
from .models import Authors
from .models import Books

def home_page(request):
    context = {}
    return render(request, 'library/Home.html', context)


def get_authors(request):
    context = {}
    return render(request, 'library/authors.html', context)
