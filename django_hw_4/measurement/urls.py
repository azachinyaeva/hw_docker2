from django.contrib import admin
from django.urls import path
from .views import *

urlpatterns = [
    path('sensors/', CreateSensorView.as_view()),
    path('sensors/<pk>/', RetrieveUpdateAPIView.as_view()),
    path('list/', SensorView.as_view()),
    path('measurements/', ListCreateAPIView.as_view()),
]
