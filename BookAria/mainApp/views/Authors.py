from django.http import HttpResponse
from django.shortcuts import redirect
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from mainApp.models import Authors
from django.contrib.auth.models import User
from mainApp.models import Followed_Authors

@login_required(login_url='/signin/')
def authors(request):
    params ={}
    params['authors'] = Authors.objects.all()
    return render(request, template_name='library/authors.html', context=params)

@login_required(login_url='/signin/')
def followAuthor(request,auhtor_id):
    currentUser = User.objects.get(pk=request.user.id)
    Auhtor = Authors.objects.get(pk=auhtor_id)
    followAuthor = Followed_Authors.objects.create(user_id=currentUser,author_id=Auhtor)
    followAuthor.save();
    return redirect(request.META['HTTP_REFERER'])

@login_required(login_url='/signin/')
def unFollowAuthor(request,auhtor_id):
    Followed_Authors.objects.get(user_id=request.user.id,author_id=auhtor_id).delete()
    return redirect(request.META['HTTP_REFERER'])
