# Generated by Django 3.0.5 on 2020-12-14 11:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('carapp', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ContactForm',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(default='', max_length=100)),
                ('email', models.CharField(default='', max_length=100)),
                ('subject', models.CharField(default='', max_length=100)),
                ('phone', models.CharField(default='', max_length=100)),
                ('message', models.TextField(default='', max_length=500)),
            ],
        ),
    ]
