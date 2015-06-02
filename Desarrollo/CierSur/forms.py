from django import forms
from django.forms import ModelForm
from CierSur.models import DataPerson
from CierSur.models import AditionalDate
from CierSur.models import Inscripcion_cursos
from CierSur.models import estudiante_nota
from CierSur.models import Master_Teacher


#Esta clase no la estoy utulizando. se puede eliminar al finalizar el project 
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
		model = AditionalDate
		fields = '__all__'

class Curso_estudiante(ModelForm):
	class Meta:
		model = Inscripcion_cursos
		fields = '__all__'


class Curso_calificar(ModelForm):
	class Meta:
		model = estudiante_nota
		fields = '__all__'

class MasterTeacher(ModelForm):
	class Meta:
		model = Master_Teacher
		fields = '__all__'