"""mysite URL Configuration

        This is our app called main

        app_name = "main" is useful
        when you are trying to create custom urls
        that will point to a specific view,
        but you don't have to hard code the urls

"""
from django.urls import path
from . import views

app_name = "main"

urlpatterns = [
    path("", views.homepage, name="homepage"),
    path("register/", views.register, name="register"),
]
