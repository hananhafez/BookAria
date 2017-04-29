# Django
from django.conf.urls import include
from django.conf.urls import url
from  mainApp.views import users
# local Django

from  mainApp.views.Home import *
from  mainApp.views.Authors import *

urlpatterns =[

    # url(r'$', users.signUp , name='signUp'),
    url(r'^authors/$', authors , name='authors'),
    ]
