from django.shortcuts import render,get_list_or_404,get_object_or_404, redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from mainApp.models import Books,  Authors
from django.views.generic import ListView, DetailView
# Create your views here.

@login_required(login_url='/signin/')
def book_search(request, query):
    books = Books.objects.filter(title__icontains=query)
    print ("books:" , books)
    return render(request, 'library/search.html',{'search_type':'book', 'books': books })

@login_required(login_url='/signin/')
def author_search(request, query):
    authors = Authors.objects.filter(name__icontains=query)
    print ("authors:", authors)
    return render(request,'library/search.html', {'search_type':'author', 'authors':authors})
