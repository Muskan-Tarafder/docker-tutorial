from django.shortcuts import render

def home_view(request):
    return render(request, 'a_home/home.html')

from django.shortcuts import render, redirect
from _core.tasks import count_task

def count_to_10(request):
    count_task.delay()
    return redirect('home')