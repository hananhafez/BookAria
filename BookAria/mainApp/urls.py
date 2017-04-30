# Django
from django.conf.urls import include
from django.conf.urls import url
from  mainApp.views import category
from  mainApp.views import users
# local Django
from  mainApp.views.search import *
urlpatterns =[
    url(r'^category/$', category.list , name='category'),
    url(r'^search/book/(?P<query>[a-zA-Z0-9]+)$', book_search, name="book_search"),
    url(r'^search/author/(?P<query>[a-zA-Z0-9]+)$', author_search, name="author_search"),
    ]
