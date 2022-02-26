from django.contrib import admin
from .models import Category, Series, Tutorial
from tinymce.widgets import TinyMCE
from django.db import models

# Register your models here.

class TutorialAdmin(admin.ModelAdmin):
    fieldsets = [
        ("Title/Date", {"fields": ["title", "published"]}),
        ("URL", {"fields": ["slug"]}),
        ("Series", {"fields": ["series"]}),
        ("Content", {"fields": ["content"]}),
    ]

    #override the text field in Tutorial model so it uses TinyMCE editor
    formfield_overrides = {
        models.TextField: {'widget': TinyMCE()}
    }

admin.site.register(Tutorial, TutorialAdmin)
admin.site.register(Series)
admin.site.register(Category)
