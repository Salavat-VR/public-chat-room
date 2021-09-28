from django.db import models

from django.utils.timezone import now


# Create your models here.
class Message(models.Model):
    author_email = models.ForeignKey('User', null=True, blank=True, on_delete=models.CASCADE)
    text = models.TextField('text')
    created = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(default=now)
