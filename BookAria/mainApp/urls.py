# Django
from django.conf.urls import include
from django.conf.urls import url
from  mainApp.views import users
# local Django

from  mainApp.views.Home import *
from  mainApp.views.Authors import *
from  mainApp.views.category import *

urlpatterns =[

    # url(r'$', users.signUp , name='signUp'),
    url(r'^authors/$', authors , name='authors'),
    url(r'^category/$', category , name='category'),
    url(r'^user/$', users.signUp , name='signUp'),

    ]
