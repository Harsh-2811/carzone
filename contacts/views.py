from django.shortcuts import render,redirect
from .models import Contact,Car
from django.contrib import messages
from django.contrib.auth.models import User
# Create your views here.
def inquiry(request):
    if request.method == "POST":
        car_id = request.POST['car_id']
        car_title=request.POST['car_title']
        user_id=request.POST['user_id']
        first_name=request.POST['first_name']
        last_name=request.POST['last_name']
        customer_need = request.POST['customer_need']
        city=request.POST['city']
        state=request.POST['state']
        email=request.POST['email']
        phone=request.POST['phone']
        message=request.POST['message']
        user=User.objects.get(id=user_id)
        car=Car.objects.get(id=car_id)

        if request.user.is_authenticated:
            user_id=request.user.id
            has_contacted=Contact.objects.all().filter(car_id=car_id,user_id=user)
            if has_contacted:
                messages.error(request,"You Have already made inquiry about this car.Please wait we will rach to you")
                return redirect('/cars/'+car_id)


        contact=Contact(car_id=car_id,car_title=car_title,user_id=user,firstname=first_name,lastname=last_name,
                        customer_need=customer_need,city=city,state=state,email=email,phone=phone,message=message
                        )
        contact.save()


        messages.success(request,"Your Inquire message successfully submitted")
        return redirect('/cars/'+car_id)