# Generated by Django 3.1.3 on 2020-12-04 11:26

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Team',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('firstname', models.CharField(default='', max_length=100)),
                ('lastname', models.CharField(default='', max_length=100)),
                ('designation', models.CharField(default='', max_length=200)),
                ('photo', models.ImageField(upload_to='carapp')),
                ('facebook_link', models.URLField(max_length=100)),
                ('googleplus_link', models.URLField(max_length=100)),
                ('twitter_link', models.URLField(max_length=100)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
