# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from django.contrib.auth.models import User


# Create your models here.

class Authors(models.Model):
    name = models.CharField(max_length=100)
    date_of_birth = models.DateField()
    info = models.TextField()
    author_image = models.ImageField()

    def __str__(self):
        return self.name


class Books(models.Model):
    title = models.CharField(max_length=100)
    book_image = models.ImageField()
    published_at = models.DateField()
    summary = models.TextField()
    acc_rate = models.IntegerField()
    ISBN = models.IntegerField()
    category_id = models.ForeignKey('Catergory')
    author_id = models.ForeignKey('Authors', on_delete=models.CASCADE,default=1)


    def __str__(self):
        return self.title


class Catergory (models.Model):
    cat_name = models.CharField(max_length=100)

    def __str__(self):
        return self.cat_name


class Favourites(models.Model):
    user_id = models.ManyToManyField(User)
    category_id = models.ManyToManyField('Catergory')

class User_Book(models.Model):
    user_id = models.ManyToManyField(User)
    book_id = models.ManyToManyField('Books')
    state = models.ForeignKey('Book_State')
    rate = models.IntegerField()

class Book_State(models.Model):
    state_value = models.CharField(max_length=100)

    def __str__(self):
        return self.state_value


class Followed_Authors(models.Model):
    user_id = models.ManyToManyField(User)
    author_id = models.ManyToManyField('Authors')
