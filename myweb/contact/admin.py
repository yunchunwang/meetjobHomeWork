from django.contrib import admin

# Register your models here.

from .models import Message

class ContactAdmin(admin.ModelAdmin):
    list_display = ('name','subject','create_date')
    
admin.site.register(Message,ContactAdmin)
