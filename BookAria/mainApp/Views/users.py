from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.urls import reverse
from django.shortcuts import get_object_or_404
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.forms import UserCreationForm
from django.views.generic import ListView,DetailView,UpdateView, CreateView
from django.views import View
		
def signUp(request):
	if request.method=='POST':
		pass
	else:
		return render(request, 'library/user/signUp.html')

	
		