from django.contrib import admin
from .models import Entity
from rest_framework.authtoken.admin import TokenAdmin

admin.site.register(Entity)
TokenAdmin.raw_id_fields = ['user']