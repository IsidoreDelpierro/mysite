"""mysite URL Configuration

    This is our primary add (MySite) and we're use this router to point to our new app called main

"""
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('', include('main.urls')),
    path('admin/', admin.site.urls),
    path('tinymce/', include('tinymce.urls')),
]
