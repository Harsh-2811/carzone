from django.db import models

# Create your models here.
class Team(models.Model):
    firstname=models.CharField(max_length=100,default="")
    lastname=models.CharField(max_length=100,default="")
    designation = models.CharField(max_length=200,default="")
    photo=models.ImageField(upload_to='carapp')
    facebook_link=models.URLField(max_length=100)
    googleplus_link=models.URLField(max_length=100)
    twitter_link=models.URLField(max_length=100)
    created_at=models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.firstname

class ContactForm(models.Model):
    name=models.CharField(max_length=100,default="")
    email=models.CharField(max_length=100,default="")
    subject=models.CharField(max_length=100,default="")
    phone=models.CharField(max_length=100,default="")
    message=models.TextField(max_length=500,default="")

    def __str__(self):
        return self.name