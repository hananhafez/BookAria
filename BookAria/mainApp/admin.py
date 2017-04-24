# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin
from .models import Books , Authors ,Catergory ,Favourites,User_Book,Book_State,Followed_Authors

# Register your models here.

admin.site.register(Authors)
admin.site.register(Books)
admin.site.register(Catergory)
admin.site.register(Favourites)
admin.site.register(User_Book)
admin.site.register(Book_State)
admin.site.register(Followed_Authors)
