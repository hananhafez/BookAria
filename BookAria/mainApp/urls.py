# Django
from django.conf.urls import include
from django.conf.urls import url
from  mainApp.views import users
# local Django

from  mainApp.views.Home import *
from  mainApp.views.Authors import *
from  mainApp.views.category import *
from  mainApp.views.search import *

urlpatterns =[

    # url(r'$', users.signUp , name='signUp'),
    url(r'^authors/$', authors , name='authors'),
    url(r'^category/(?P<cat_id>[0-9]+)', category , name='category'),
    url(r'^Category/', category , name='category'),
    url(r'^user/$', users.signUp , name='signUp'),
    url(r'^search/book/(?P<query>[a-zA-Z0-9]+)$', book_search, name="book_search"),
    url(r'^search/author/(?P<query>[a-zA-Z0-9]+)$', author_search, name="author_search"),

    ]
