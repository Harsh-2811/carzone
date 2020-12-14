from django.db import models
from cars.models import Car
from django.contrib.auth.models import User
from datetime import datetime

# Create your models here.
class Contact(models.Model):
    firstname = models.CharField(max_length=100,default="")
    lastname = models.CharField(max_length=100,default="")
    car_id = models.IntegerField(default=0)
    customer_need=models.CharField(max_length=100)
    car_title=models.CharField(max_length=100)
    city=models.CharField(max_length=100)
    state=models.CharField(max_length=100)
    email=models.EmailField(max_length=100)
    phone=models.CharField(max_length=100)
    message=models.TextField(max_length=600,blank=True)
    user_id=models.ForeignKey(User,on_delete=models.CASCADE)
    created_date=models.DateField(blank=True,default=datetime.now().date())
