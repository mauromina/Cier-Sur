from django import forms
from django.forms import ModelForm
from CierSur.models import DataPerson
from CierSur.models import AcademicHystory

class  DataPersonForm(forms.Form):
	cedula = forms.CharField(max_length = 50)
	nombre = forms.CharField(max_length = 50)
	apellidos = forms.CharField(max_length = 50)
	correo = forms.EmailField(max_length = 50)
	celular = forms.CharField(max_length = 50)
	direccion = forms.CharField(max_length = 50)
	sexo = forms.CharField(max_length = 10)
	fecha = forms.DateTimeField() 


class NewDataperson(ModelForm):
	class Meta:
		model = DataPerson
		fields = '__all__'


class NewAcademicHystory(ModelForm):
	class Meta:
		model = AcademicHystory
		fields = '__all__'