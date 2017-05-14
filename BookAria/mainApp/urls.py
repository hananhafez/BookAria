# Django
from django.conf.urls import include
from django.conf.urls import url
from  mainApp.views import category
from  mainApp.views import users
# local Django
from  mainApp.views.search import *
urlpatterns =[
    url(r'^category/$', category.list , name='category'),
    ]
