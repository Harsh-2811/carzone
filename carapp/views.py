from django.shortcuts import render
from .models import Team,ContactForm
from cars.models import Car
from django.contrib import messages
# Create your views here.
def index(request):
    teams=Team.objects.all()
    cars = Car.objects.order_by("-created_date").filter(is_featured=True)
    all_cars=Car.objects.order_by("-created_date").all()
    model_field=Car.objects.values_list('model',flat=True).distinct()
    state_field=Car.objects.values_list('state',flat=True).distinct()
    body_field=Car.objects.values_list('body_style',flat=True).distinct()
    year_field=Car.objects.values_list('year',flat=True).distinct()
    return render(request,'pages/index.html',{'teams':teams,'featured_cars':cars,"all_cars":all_cars,'model_field':model_field,'state_field':state_field,'body_field':body_field,'year_field':year_field})


def about(request):
    teams = Team.objects.all()
    return render(request,'pages/about.html',{'teams':teams})

def service(request):
    return render(request,'pages/services.html')


def contact(request):
    if request.method == 'POST':
        name=request.POST['name']
        email=request.POST['email']
        subject=request.POST['subject']
        phone=request.POST['phone']
        message=request.POST['message']
        cfm=ContactForm(name=name,email=email,subject=subject,phone=phone,message=message)
        cfm.save()
        messages.success(request,'Successfully Saved')

    return render(request,'pages/contact.html')