from django.db import models



class customer(models.Model):
    name=models.CharField(max_length=150)
    phone_number=models.CharField(max_length=120)
    email=models.CharField(max_length=120)
    address=models.CharField(max_length=120)
    password=models.CharField(max_length=120)
    
class userupload(models.Model):
    file=models.FileField(max_length=150)
    result=models.CharField(max_length=120)
    data=models.CharField(max_length=120)
   