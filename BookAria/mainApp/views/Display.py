from django.http import HttpResponse
from django.shortcuts import render
from django.shortcuts import redirect
from django.views.decorators.csrf import csrf_protect
from mainApp.models import Books
from mainApp.models import Book_State
from mainApp.models import User_Book
from mainApp.models import Authors
from django.contrib.auth.models import User
# Create your views here.
def DisplayBook(request,book_id):
    book = Books.objects.get(id=book_id)
    states = Book_State.objects.all()
    userBook = User_Book.objects.get(user_id=1,book_id=book_id)
    print(userBook.state)
    return render(request,'../templates/library/DisplayBook.html',context={"Book":book,"states":states,"Bookstate":userBook.state})

def updateState(request,book_id,state_id):
    userbook = User_Book.objects.get(user_id=1,book_id=book_id)
    stateid = int(state_id)
    state = Book_State.objects.get(pk=stateid)
    print(state.id)
    userbook.state = state
    userbook.save()
    return redirect(request.META['HTTP_REFERER'])

def DisplayAuthor(request,author_id):
    author = Authors.objects.get(id=author_id)
    return render(request,'../templates/library/DisplayAuthor.html',context={"Author":author})
