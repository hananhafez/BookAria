# Django
from django.conf.urls import include
from django.conf.urls import url

# local Django
from . import views


urlpatterns = [
    url(r'^$', views.home_page , name='home_page'),
    url(r'^authors/$', views.get_authors , name='get_authors'),


    ]