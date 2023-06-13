from django.db import models

class Product(models.Model):
    name = models.CharField(max_length=255)
    price = models.FloatField(null=True)
    text = models.CharField(max_length=255)
    imgpath = models.TextField()

    def __str__(self):
        return f"{self.name}"
