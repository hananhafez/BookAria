from django.http import HttpResponse
from django.shortcuts import render
from django.shortcuts import redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.db.models import Sum
from django.views.generic import ListView
from django.views.decorators.csrf import csrf_protect
from mainApp.models import Books
from mainApp.models import User_Book
from django.contrib.auth.models import User
# Create your views here.

class userBooks(LoginRequiredMixin,ListView):
    login_url = '/signin/'
    redirect_field_name = 'redirect_to'
    model = User_Book
    context_object_name = 'user_books'
    queryset = User_Book.objects.filter(user_id=1)
    template_name = '../templates/library/Home.html'


@login_required(login_url='/signin/')
def updateRate(request,book_id,score):
    User_Book.objects.filter(book_id=book_id).update(rate = score)
    Book = Books.objects.get(id=book_id)
    accumilativeRate = getattr(Book, 'acc_rate')
    if accumilativeRate == 0 :
        Book.acc_rate = score
        Book.save()
    else:
        sumRates = User_Book.objects.filter(book_id=book_id).aggregate(Sum('rate'))
        print("summtion*************")
        print(sumRates['rate__sum'])
        newAccRate = int(round(sumRates['rate__sum']/5))
        Book.acc_rate = newAccRate
        Book.save()
    return redirect(request.META['HTTP_REFERER'])
