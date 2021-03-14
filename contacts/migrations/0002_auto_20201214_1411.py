# Generated by Django 3.0.5 on 2020-12-14 08:41

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='contact',
            name='car_id',
        ),
        migrations.AddField(
            model_name='contact',
            name='car_id',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='contact',
            name='created_date',
            field=models.DateField(blank=True, default=datetime.date(2020, 12, 14)),
        ),
    ]