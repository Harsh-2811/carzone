from django.shortcuts import render,get_object_or_404
from .models import Car
from django.core.paginator import PageNotAnInteger,Paginator,EmptyPage
# Create your views here.
def cars(request):
    cars=Car.objects.order_by('-created_date').all()
    paginator=Paginator(cars,3)
    page=request.GET.get('page')
    paged_cars=paginator.get_page(page)
    model_field = Car.objects.values_list('model', flat=True).distinct()
    state_field = Car.objects.values_list('state', flat=True).distinct()
    body_field = Car.objects.values_list('body_style', flat=True).distinct()
    year_field = Car.objects.values_list('year', flat=True).distinct()
    transmission_feild = Car.objects.values_list('transmition', flat=True).distinct()
    condition_field=Car.objects.values_list('condition', flat=True).distinct()
    return render(request,'cars/cars.html',{'cars':paged_cars,'condition_field':condition_field,'transmission_feild':transmission_feild,'model_field':model_field,'state_field':state_field,'body_field':body_field,'year_field':year_field})

def car_details(request,id):
    single_car=get_object_or_404(Car,pk=id)
    return render(request,'cars/car_details.html',{'single_car':single_car})

def search(request):
    cars = Car.objects.order_by('-created_date').all()
    print(cars)
    if 'keyword' in request.GET:
        keyword = request.GET['keyword']
        if keyword:
            cars=cars.filter(description__icontains=keyword)
    if 'min_price' in request.GET:
        min_price = request.GET['min_price']
        max_price = request.GET['max_price']
        if max_price:
            cars=cars.filter(price__gte=min_price,price__lte=max_price)


    if 'model' in request.GET:
        model = request.GET['model']
        if model:
            cars=cars.filter(model__iexact=model)

    if 'state' in request.GET:
        keyword = request.GET['state']
        if keyword:
            cars=cars.filter(state__iexact=keyword)

    if 'year' in request.GET:
        keyword = request.GET['year']
        if keyword:
            cars=cars.filter(year__iexact=keyword)

    if 'body_style' in request.GET:
        keyword = request.GET['body_style']

        if keyword:
            cars=cars.filter(body_style__iexact=keyword)


    if 'transmission' in request.GET:
        keyword = request.GET['transmission']

        if keyword:
            cars = cars.filter(transmition__iexact=keyword)

    if 'condition' in request.GET:
        keyword = request.GET['condition']

        if keyword:
            cars = cars.filter(condition__iexact=keyword)

    model_field = Car.objects.values_list('model', flat=True).distinct()
    state_field = Car.objects.values_list('state', flat=True).distinct()
    body_field = Car.objects.values_list('body_style', flat=True).distinct()
    year_field = Car.objects.values_list('year', flat=True).distinct()
    transmission_feild = Car.objects.values_list('transmition', flat=True).distinct()
    condition_field = Car.objects.values_list('condition', flat=True).distinct()

    return render(request,'cars/search.html',{'cars':cars,'condition_field':condition_field,'transmission_feild':transmission_feild,'model_field':model_field,'state_field':state_field,'body_field':body_field,'year_field':year_field})