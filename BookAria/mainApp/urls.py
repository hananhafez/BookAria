# Django
from django.conf.urls import include
from django.conf.urls import url
from  mainApp.Views import users
# local Django

from  mainApp.views.Authentication import *
from  mainApp.views.Books import *
from  mainApp.views.Home import *
from  mainApp.views.Authors import *


urlpatterns =[

    url(r'^authors/$', authors , name='authors'),
    url(r'^user/$', users.signUp , name='signUp'),

    ]
