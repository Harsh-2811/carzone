# Generated by Django 3.0.5 on 2020-12-14 11:56

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cars', '0004_auto_20201214_1411'),
    ]

    operations = [
        migrations.AlterField(
            model_name='car',
            name='created_date',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 12, 14, 17, 26, 48, 392601)),
        ),
    ]