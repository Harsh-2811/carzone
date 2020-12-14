from django.urls import path
from . import views
urlpatterns = [
    path('', views.cars,name='Cars'),
    path('<int:id>', views.car_details,name='Cars_Details'),
    path('search', views.search,name='search'),

]