from django.http import HttpResponse, HttpResponseRedirect
from django.template import loader
from django.urls import reverse
from .models import Product

def products(request):
    myproducts = Product.objects.all().values()
    template = loader.get_template('all_itens.html')
    context = {
        'myproducts': myproducts,
    }
    return HttpResponse(template.render(context, request))

def details(request, id):
    myproduct = Product.objects.get(id=id)
    template = loader.get_template('details.html')
    context = {
        'myproduct': myproduct,
    }
    return HttpResponse(template.render(context, request))

def main(request):
    template = loader.get_template('main.html')
    return HttpResponse(template.render())

def add(request):
    template = loader.get_template('add.html')
    return HttpResponse(template.render({}, request))

def addrecord(request):
    field_name = request.POST['name']
    field_price = request.POST['price']
    field_text = request.POST['text']
    field_imgpath = request.POST['imgpath']
    product = Product(name=field_name, price=field_price, text=field_text, imgpath=field_imgpath)
    product.save()
    return HttpResponseRedirect(reverse('products'))

def delete(request, id):
    product = Product.objects.get(id=id)
    product.delete()
    return HttpResponseRedirect(reverse('products'))

def update(request, id):
    myproduct = Product.objects.get(id=id)
    template = loader.get_template('update.html')
    context = {
        'myproduct': myproduct,
    }
    return HttpResponse(template.render(context, request))

def updaterecord(request, id):
    upfield_name = request.POST['name']
    upfield_price = request.POST['price']
    upfield_text = request.POST['text']
    upfield_imgpath = request.POST['imgpath']
    product = Product.objects.get(id=id)
    product.name = upfield_name
    product.price = upfield_price
    product.text = upfield_text
    product.imgpath = upfield_imgpath
    product.save()
    return HttpResponseRedirect(reverse('products'))