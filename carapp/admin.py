from django.contrib import admin
from django.utils.html import format_html
# Register your models here.
from .models import Team,ContactForm
class TeamAdmin(admin.ModelAdmin):
    def thumbnail(self,object):
        return format_html('<img src="{}" width="40" style="border-radius:50px">'.format(object.photo.url))
    thumbnail.short_description = "Profile Image"
    list_display = ('id','firstname','lastname','designation','created_at','thumbnail')
    list_display_links = ('id','firstname')
admin.site.register(Team,TeamAdmin)
admin.site.register(ContactForm)