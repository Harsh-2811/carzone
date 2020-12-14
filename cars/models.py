from django.db import models
from datetime import datetime
from ckeditor.fields import RichTextField
from multiselectfield import MultiSelectField
# Create your models here.
class Car(models.Model):
    state_choice = (
        ('GJ', 'Gujarat'),
        ('Up', 'UttarPradesh'),
        ('MH', 'Maharashtra'),
        ('MP', 'Madhyapradesh'),
        ('HM', 'Himachal'),
        ('RJ', 'Rajasthan'),
        ('BH', 'Bihar'),
        ('PJ', 'Panjab'),
        ('AS', 'Asam'),
        ('HR', 'Haryana'),

    )

    year_choice = []
    for r in range(2000, (datetime.now().year + 1)):
        year_choice.append((r, r))

    features_choices = (
        ('Cruise Control', 'Cruise Control'),
        ('Audio Interface', 'Audio Interface'),
        ('Airbags', 'Airbags'),
        ('Air Conditioning', 'Air Conditioning'),
        ('Seat Heating', 'Seat Heating'),
        ('Alarm System', 'Alarm System'),
        ('ParkAssist', 'ParkAssist'),
        ('Power Steering', 'Power Steering'),
        ('Reversing Camera', 'Reversing Camera'),
        ('Direct Fuel Injection', 'Direct Fuel Injection'),
        ('Auto Start/Stop', 'Auto Start/Stop'),
        ('Wind Deflector', 'Wind Deflector'),
        ('Bluetooth Handset', 'Bluetooth Handset'),
    )

    door_choices = (
        ('2', '2'),
        ('3', '3'),
        ('4', '4'),
        ('5', '5'),
        ('6', '6'),
    )

    car_title=models.CharField(max_length=255)
    state=models.CharField(choices=state_choice,max_length=100)
    city=models.CharField(max_length=100)
    color=models.CharField(max_length=100)
    model=models.CharField(max_length=100)
    year=models.IntegerField(('year'),choices=year_choice)
    condition=models.CharField(max_length=100)
    price=models.IntegerField()
    description=RichTextField()
    car_photo=models.ImageField(upload_to='car')
    car_photo1=models.ImageField(upload_to='car')
    car_photo2=models.ImageField(upload_to='car')
    car_photo3=models.ImageField(upload_to='car')
    car_photo4=models.ImageField(upload_to='car')
    features=MultiSelectField(choices=features_choices)
    body_style=models.CharField(max_length=100)
    engine=models.CharField(max_length=100)
    transmition=models.CharField(max_length=100)
    interior=models.CharField(max_length=100)
    miles=models.IntegerField()
    doors=models.CharField(choices=door_choices,max_length=100)
    passengers=models.IntegerField(max_length=100)
    vin_no=models.CharField(max_length=100)
    milage=models.IntegerField()
    fuel_type=models.CharField(max_length=100)
    no_of_owners=models.CharField(max_length=100)
    is_featured=models.BooleanField()
    created_date=models.DateTimeField(auto_now_add=True,blank=True)

    def __str__(self):
        return self.car_title
    def split_features(self):
        return self.features.split(',')