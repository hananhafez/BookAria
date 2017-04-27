from django.http import HttpResponse
from django.shortcuts import render
from mainApp.models import Authors

def authors(request):
    params ={}
    params['authors'] = Authors.objects.all()
    return render(request, template_name='library/authors.html', context=params)
