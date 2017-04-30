from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from django.shortcuts import redirect
from django.views.decorators.csrf import csrf_protect
from mainApp.models import Books
from mainApp.models import Book_State
from mainApp.models import User_Book
from mainApp.models import Authors
from mainApp.models import Followed_Authors
from django.contrib.auth.models import User
# Create your views here.

@login_required(login_url='/signin/')
def DisplayBook(request,book_id):
    book = Books.objects.get(id=book_id)
    states = Book_State.objects.all()
    userBook = User_Book.objects.get(user_id=1,book_id=book_id)
    print(userBook.state)
    return render(request,'../templates/library/DisplayBook.html',context={"Book":book,"states":states,"Bookstate":userBook.state})

@login_required(login_url='/signin/')
def updateState(request,book_id,state_id):
    userbook = User_Book.objects.get(user_id=1,book_id=book_id)
    stateid = int(state_id)
    state = Book_State.objects.get(pk=stateid)
    print(state.id)
    userbook.state = state
    userbook.save()
    return redirect(request.META['HTTP_REFERER'])

@login_required(login_url='/signin/')
def DisplayAuthor(request,author_id):
    author = Authors.objects.get(id=author_id)
    isFollowed = Followed_Authors.objects.filter(user_id=request.user.id,author_id=author_id)
    if len(isFollowed) == 0:
        isFollowed = False
    else:
        isFollowed = True
    return render(request,'../templates/library/DisplayAuthor.html',context={"Author":author,"isFollowed":isFollowed})
