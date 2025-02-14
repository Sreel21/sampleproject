"""myapp URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from .import views
from django.conf import settings
from django.conf.urls.static import static




urlpatterns = [
    path('',views.index,name='index'),
    path('insert',views.insert,name='insert'),
    path('about',views.about,name='about'),
    path('login',views.login,name='login'),
    path('users',views.users,name='users'),
    path('addlogin',views.addlogin,name='addlogin'),
    path('register',views.register,name='register'),
    path('logout/',views.logout,name='logout'),
    path('fileupload',views.fileupload,name='fileupload'),
    path('addupload',views.addupload,name='addupload'),
    path('dash',views.dash,name='dash'),
    path('addinsert',views.addinsert,name='addinsert'),
    path('admin/', admin.site.urls),
    
    
]+ static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
