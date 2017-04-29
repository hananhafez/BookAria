"""BookAria URL Configuration
The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.contrib.staticfiles.urls import static
from django.conf.urls import url
from django.contrib import admin


from  mainApp.views import Authentication

from  mainApp.views import Home
from  mainApp.views import Display
from  mainApp.views import Authors
from  mainApp.views import users
from  BookAria import settings
from django.conf.urls import include

urlpatterns = [
    # url(r'^$', user.signIn ),
    url(r'^admin/', admin.site.urls),
    url(r'^bookstore/', include('mainApp.urls')),


    # url(r'^Home/', Books.userBooks.as_view()),


    # url(r'^Home/', Books.userBooks.as_view()),
    url(r'^signin$', users.signIn , name='signIn'),
    url(r'^user/$', users.signUp , name='signUp'),
    url(r'^signout/$', users.signOut , name='signOut'),

    url(r'^Home/', Home.userBooks.as_view()),
    url(r'^BookRate/(?P<book_id>[0-9]+)/(?P<score>[0-9]+)', Home.updateRate),
    url(r'^DisplayBook/(?P<book_id>[0-9]+)', Display.DisplayBook),
    url(r'^DisplayAuthor/(?P<author_id>[0-9]+)', Display.DisplayAuthor),
    url(r'^updateState/(?P<book_id>[0-9]+)/(?P<state_id>[0-9]+)', Display.updateState),
]
urlpatterns += staticfiles_urlpatterns()
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
