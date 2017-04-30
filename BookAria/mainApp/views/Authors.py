from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from mainApp.models import Authors
from mainApp.models import Books

@login_required(login_url='/signin/')
def authors(request):
    params ={}
    params['authors'] = Authors.objects.all()
    return render(request, template_name='library/authors.html', context=params)
