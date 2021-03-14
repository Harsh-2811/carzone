from django.contrib import admin
from django.utils.html import format_html

from .models import Car
from import_export.admin import ImportExportModelAdmin
# Register your models here.

class CarAdmin(ImportExportModelAdmin):
    def thumbnail(self,object):
        return format_html('<img src="{}" width="40" style="border-radius:50px">'.format(object.car_photo.url))
    list_display = ('id','car_title','model','state','city','condition','price','is_featured','thumbnail')
    list_display_links = ('id','car_title','thumbnail')
    list_editable = ('is_featured',)

admin.site.register(Car,CarAdmin)