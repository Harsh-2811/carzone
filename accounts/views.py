from django.shortcuts import render,redirect
from django.contrib import messages
from django.contrib.auth.models import User,auth
from contacts.models import Contact
from django.contrib.auth import authenticate,login,logout
from cars.models import Car
# Create your views here.
def login_user(request):
    if request.method == "POST":
        username=request.POST['username']
        password=request.POST['password']
        user=authenticate(username=username,password=password)
        if user:
            login(request,user)
            messages.success(request,"Successfully Login")
            return redirect('dashboard')
        else:
            messages.error(request,"Invalid Credentials")
            return redirect('login')
    return render(request,'account/login.html')

def register(request):
    if request.method == "POST":
        firstname=request.POST['firstname']
        lastname=request.POST['lastname']
        username=request.POST['username']
        email=request.POST['email']
        password=request.POST['password']
        confirm_password=request.POST['confirm_password']

        if password == confirm_password:
            if User.objects.filter(username=username).exists():
                messages.error(request,'Username already exists')
                return redirect('register')
            else:
                if User.objects.filter(email=email).exists():
                    messages.error(request,'Email already exists')
                    return redirect('register')
                else:
                    user=User.objects.create_user(username=username,email=email,password=password,first_name=firstname,last_name=lastname)

                    user.save()
                    login(request,user)
                    messages.success(request,'Successfully Registered')
                    return redirect('dashboard')
        else:
            messages.error(request,'Please Enter same input in Password and Confirm Password')
            return redirect('register')

    return render(request,'account/register.html')

def logout_user(request):
    if request.method == "POST":
        logout(request)
        messages.success(request,"Successfully Logged Out")
        return redirect('home')
    return redirect('home')


def dashboard(request):
    if request.user.is_authenticated:
        inquires=Contact.objects.order_by('-created_date').filter(user_id=request.user)


        price=[]
        for i in inquires:
            car_id = i.car_id

            car_price = Car.objects.get(id=car_id)
            price.append(car_price.price)
            print(price)
        new_inquires=zip(inquires,price)


        return render(request, 'account/dashboard.html',{'inquires':new_inquires})
    else:
        return render('home')
