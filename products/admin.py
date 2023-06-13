from django.contrib import admin
from .models import Product

class ProductAdmin(admin.ModelAdmin):
    list_display = ("name", "price", "text")

admin.site.register(Product)

# admin / Admin@!@#4