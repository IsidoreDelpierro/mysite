from django.db import models
from datetime import datetime

# Create your models here.
#cf django model fields on djangoproject.com

class Tutorial(models.Model):
    title = models.CharField(max_length=200)
    content = models.TextField()
    published = models.DateTimeField("date published", default=datetime.now())

    def __str__(self):
        return str(self.title)
