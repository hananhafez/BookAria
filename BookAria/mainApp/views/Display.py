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
    userBook = User_Book.objects.filter(user_id=request.user.id,book_id=book_id)
    if userBook.count() == 0:
        userBook = "undefined"
    else:
        userBook = userBook[0].state
    print(userBook)
    return render(request,'../templates/library/DisplayBook.html',context={"Book":book,"states":states,"Bookstate":userBook})

@login_required(login_url='/signin/')
def updateState(request,book_id,state_id):
    userbook = User_Book.objects.filter(user_id=request.user.id,book_id=book_id)
    user = User.objects.get(pk=request.user.id)
    book = Books.objects.get(pk=book_id)
    state = Book_State.objects.get(pk=state_id)
    if userbook.count() == 0:
        User_Book.objects.create(user_id=user,book_id=book,state_id=state_id,rate=0)
    else:
        stateid = int(state_id)
        state = Book_State.objects.get(pk=stateid)
        print(state.id)
        userbook.update(state_id= state)
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
