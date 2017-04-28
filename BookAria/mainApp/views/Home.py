from django.http import HttpResponse
from django.shortcuts import render
from django.views.generic import ListView
from django.views.decorators.csrf import csrf_protect
from mainApp.models import Books
from mainApp.models import User_Book
from django.contrib.auth.models import User
# Create your views here.
class userBooks(ListView):
    model = User_Book
    #current_user = request.user
    #if request.user.is_authenticated():
    #{% if user.is_authenticated %}
    context_object_name = 'user_books'
    queryset = User_Book.objects.filter(user_id=1)
    template_name = '../templates/library/Home.html'

@csrf_protect
def updateRate(request):
    userBook = User_Book.objects.filter(book_id=request.POST.get('BookdID'))
    userBook.rate = request.POST.get('rate')
    userBook.save()
    Book = Books.objects.get(id=request.POST.get('BookdID'))
    accumilativeRate = getattr(Book, 'acc_rate')
    if accumilativeRate == 0 :
        Book.acc_rate = request.POST.get('score')
        Book.save()
    else:
        sumRates = User_Book.objects.filter(book_id=request.POST.get('BookdID')).aggregate(Sum('rate'))
        newAccRate = int(round(sumRates/5))
        Book.acc_rate = newAccRate
        Book.save()
    return redirect(requst.META['HTTP_REFERER'])
