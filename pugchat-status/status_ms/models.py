from django.db import models


class State(models.Model):
    id_user = models.CharField(max_length=20, unique=True)
    about = models.CharField(max_length=200, blank=True)
    image = models.CharField(max_length=300, blank=False)
    created_at = models.DateField(auto_now_add=True)