from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Tutorial, Series, Category
from django.contrib.auth.forms import AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages
from .forms import NewUserForm

# Create your views here.
def single_slug(request, single_slug):
    categories = [c.slug for c in Category.objects.all()]
    if single_slug in categories:
        matching_series = Series.objects.filter(category__slug=single_slug)

        series_urls = {}
        for m in matching_series.all():
            part_one = Tutorial.objects.filter(series__series=m.series).earliest("published")
            series_urls[m] = part_one.slug

        return render(request,
                        "main/category.html",
                        {"part_ones": series_urls})

    tutorials = [t.slug for t in Tutorial.objects.all()]
    if single_slug in tutorials:
        return HttpResponse(f"{single_slug} is a Tutorial!!!")

    return HttpResponse(f"{single_slug} does not correspond to anything.")


def homepage(request):
    #return HttpResponse("Wow this is an <strong>awesome</strong> tutorial")
    return render(request=request,
        template_name="main/categories.html",
        context={"categories": Category.objects.all()})

def register(request):
    if request.method == "POST":
        form = NewUserForm(request.POST)
        if form.is_valid():
            user = form.save()
            username = form.cleaned_data.get('username')
            messages.success(request, f"New Account Created: {username}")
            login(request, user)
            messages.info(request, f"You are now logged in as: {username}")
            return redirect("main:homepage")

        else:
            for msg in form.error_messages:
                messages.error(request, f"{msg}: {form.error_messages[msg]}")
                print(form.error_messages[msg])

    form = NewUserForm
    context = {"form": form}
    return render(request,
                    "main/register.html",
                    context)


def logout_request(request):
    logout(request)
    messages.info(request, "Logged out successfully!")
    return redirect("main:homepage")


def login_request(request):
    if request.method == "POST":
        form = AuthenticationForm(request, data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            #you have to explicitly specify, else you get an error
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                messages.info(request, f"You are now logged in as {username}")
                return redirect("main:homepage")
            else:
                #if something is wrong with the data we input
                messages.error(request, "Invalid username or password")
        else:
            #something wrong with the form
            messages.error(request, f"{msg}: {form.error_messages[msg]}")


    form = AuthenticationForm()
    context = {"form":form}
    return render(request,
                    "main/login.html",
                    context)
