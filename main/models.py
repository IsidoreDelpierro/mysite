from django.db import models
from datetime import datetime

# Create your models here.
#cf django model fields on djangoproject.com

class Category(models.Model):
    category = models.CharField(max_length=200)
    summary = models.CharField(max_length=200)
    slug = models.CharField(max_length=200)

    class Meta:
        verbose_name_plural = "Categories"

    def __str__(self):
        return self.category


class Series(models.Model):
    series = models.CharField(max_length=200)
    category = models.ForeignKey(Category, default=1, verbose_name="Category", on_delete=models.SET_DEFAULT)
    summary = models.CharField(max_length=200)

    class Meta:
        verbose_name_plural = "Series"

    def __str__(self):
        return self.series


class Tutorial(models.Model):
    title = models.CharField(max_length=200)
    content = models.TextField()
    published = models.DateTimeField("date published", default=datetime.now())

    series = models.ForeignKey(Series, default=1, verbose_name="Series", on_delete=models.SET_DEFAULT)
    slug = models.CharField(max_length=200, default=1)

    def __str__(self):
        return self.title
