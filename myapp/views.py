
from django.http import HttpResponse
from django.shortcuts import render
from .models import *
from django.shortcuts import redirect
# FILE UPLOAD AND VIEW
from  django.core.files.storage import FileSystemStorage
# SESSION
import os
from testing_code import test_rf
from .models import userupload


def index(request):
    return render(request,'index.html')

def insert(request):
    return render(request,'index1.html')
def dash(request):
    return render(request,'admin/index.html')
def users(request):
    sel=customer.objects.all()
    return render(request,'admin/category.html',{'result':sel})
def about(request):
    return render(request,'about.html')
def login(request):
    return render(request,'login.html')
def register(request):
    return render(request,'insert.html')

def addlogin(request):
    x=request.POST.get('email')
    y=request.POST.get('password')
    
    if x=='admin@gmail.com' and y=='admin':
        request.session['type']='Admin'
        return render(request,'admin/index.html')
    elif customer.objects.filter(email=x, password=y).exists():
        details = customer.objects.get(email=request.POST['email'], password=y)
        if details.password == request.POST['password']:
            request.session['oid'] = details.id
            request.session['oname'] = details.name

            request.session['oemail'] = x

            request.session['org'] = 'org'

            return render(request,'index.html')

    else:
        return render(request, 'login.html', {'status': 'Invalid Email and Password'})


def addinsert(request):
    user1=customer.objects.all()
    if request.method=="POST":
        name=request.POST.get('name')
        phone=request.POST.get('phone')
        email=request.POST.get('email')
        address=request.POST.get('address')
        password=request.POST.get('password')
        user=customer(name=name,email=email,phone_number=phone,address=address,password=password)
        user.save()
        return render(request,'insert.html',{'status':'Successfully Register'})


def logout(request):
    session_keys = list(request.session.keys())
    for key in session_keys:
        del request.session[key]
    return redirect(index) 
    
    
    
def fileupload(request):
    return render(request,'file.html')
        
        
def addupload(request):
    if request.method == "POST" and 'image' in request.FILES:
        myfile = request.FILES['image']
        try:
            os.remove("media/input/test.xml")
        except:
            pass
        fs = FileSystemStorage(location="media/input")
        fs.save("test.xml", myfile)
        fs = FileSystemStorage()
        filename = fs.save(myfile.name, myfile)
        result = test_rf.predict()
        print("Result:", result)
        user = userupload.objects.create(file=myfile)
        user.save()
        return render(request, 'result.html', {'res': result})
    else:
        return HttpResponse("Error: File not found or invalid request.")

        
        
