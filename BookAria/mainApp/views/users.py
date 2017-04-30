from django.shortcuts import render,redirect
from django.http import HttpResponse,HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import get_object_or_404
from django.contrib.auth import authenticate,login,logout
from django.views import View
from django.core.validators import validate_email
from django.contrib.auth.models import User
from django.db.models import Q
from django.core import serializers

def signUp(request):
	if request.method=='POST':
		valid=True
		email=request.POST.get('email')
		password=request.POST.get('password')
		firstname=request.POST.get('firstname')
		lastname=request.POST.get('lastname')
		username=request.POST.get('username')
		errors=[]
		data={"email":email,"firstname":firstname, "lastname":lastname,"username":username,"password":password}
		try:
			validate_email(request.POST.get("email"))
		except:
			errors.append("Email is not right")
			valid=False
		if len(firstname)<5 or len(firstname)>16:
			errors.append("FirstName must be more 5 characters & no more 16 character")
			valid=False
		if len(lastname)<5 or len(lastname)>16:
			errors.append("LastName must be more 5 characters & no more 16 character")
			valid=False
		if len(username)<8 or len(username)>30:
			errors.append("UserName must be more 5 characters & no more 16 character")
			valid=False

		if len(password)<8 or len(password)>30:
			errors.append("Password must be more 8 characters & no more 16 character")
			valid=False
		if(valid):
			test=User.objects.filter(Q(email=email)|Q(username=username))
			if(not test):
				user =User.objects.create_user( username.strip(),email.strip(),password)
				user.first_name=firstname
				user.last_name=lastname
				user.save()
				user = serializers.serialize('json', [user])
				request.session['user']=user
				return redirect('authors')
			else:
				errors.append("Email already Taken")
				# return HttpResponse(test)
				return render(request, 'library/user/signUp.html', {"errors":errors,"data":data})
		else:
			return render(request, 'library/user/signUp.html', {"errors":errors,"data":data})
	else:
		return render(request, 'library/user/signUp.html')


def signIn(request):
	# return HttpResponse("render the signIn")
	if request.method=='POST':
		username=request.POST.get('username')
		password=request.POST.get('password')
		errors=[]
		data={"username":username,"password":password}
		# return HttpResponse(request.POST.get('password'))
		user = authenticate(username=username.strip(), password=password)
		if user is not None:
			login(request, user)
			user = serializers.serialize('json', [user])
			request.session['user']=user
			return redirect('authors')
		else:
			# return HttpResponse(user)
			# errors.append('Wrong Email or Password')
			# return render(request, 'library/user/signin.html', {"errors":errors,"data":data})
			return HttpResponseRedirect(reverse('signIn', kwargs={'errors': errors}))
	else:
		return render(request, 'library/user/signin.html')
		# return HttpResponse("render the signIn")

def signOut(request):
	logout(request)
	return redirect('signIn')