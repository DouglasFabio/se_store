from django.urls import path
from . import views

urlpatterns = [
    path('', views.main, name='main'),
    path('products/', views.products, name='products'),
    path('products/details/<int:id>', views.details, name='details'),
    path('products/add/', views.add, name='add'),
    path('products/add/addrecord/', views.addrecord, name='addrecord'),
    path('products/delete/<int:id>', views.delete, name='delete'),
    path('products/update/<int:id>', views.update, name='update'),
    path('products/update/updaterecord/<int:id>', views.updaterecord, name='updaterecord'),
]