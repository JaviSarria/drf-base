from django.urls import path, include
from django.contrib.auth.models import User
from rest_framework import routers
from .views import EntityViewSet

router = routers.DefaultRouter()
router.register(r'entity', EntityViewSet)

urlpatterns = [
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    path('', include(router.urls)),
]