from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.urls import reverse
from django.shortcuts import get_object_or_404
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.forms import UserCreationForm
from django.views.generic import ListView,DetailView,UpdateView, CreateView
from django.views import View
from .models import 

# class User():
# 	def __init__(self):
# 		pass

# 	def get(self , request):
# 		pass	

# 	def post(self , request):
# 		pass	
		
def signUp(request):
	if request.method=='POST':

	else
		return render(request, 'library/user/signUp')

	
	pass	
		