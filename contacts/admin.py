from django.contrib import admin
from .models import *
class ContactAdmin(admin.ModelAdmin):
    list_display = ('id','firstname','lastname','state','car_title','user_id')
    list_display_links = ('id','firstname')
    search_fields = ('id','firstname','lastname','car_title')

    list_per_page = 20

admin.site.register(Contact,ContactAdmin)
# Register your models here.
