# Generated by Django 3.1.4 on 2020-12-06 15:06

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cars', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='car',
            name='created_date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 6, 20, 36, 1, 478155)),
        ),
        migrations.AlterField(
            model_name='car',
            name='milage',
            field=models.IntegerField(),
        ),
    ]
