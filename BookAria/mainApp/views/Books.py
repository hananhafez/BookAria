from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import ListView
from mainApp.models import Books
# Create your views here.

class userBooks(ListView):
    model = Books
    #current_user = request.user
    #if request.user.is_authenticated():
    #{% if user.is_authenticated %}
    context_object_name = 'user_books'
    queryset = Books.objects.all()
    template_name = '../templates/library/Home.html'
