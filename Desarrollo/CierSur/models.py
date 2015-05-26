from django.db import models
from django.contrib import admin
# Create your models here.
#Construido Por Mauro Castillo 




#Lo construi para realizar pruebas con los Temples
class BodyPanelAdmin(models.Model):
#Esta clase contiene la forma como sera mostrada la pantalle principal a los usuarios
	def __unicode__(self):
		return self
	Title = models.CharField(max_length = 30)
	Body = models.TextField()

class DataPerson(models.Model):
	def __unicode__(self):
		return self
	#datos personales
	#indentificador primario base de datos
	id = models.AutoField(primary_key=True)
	numero_identificacion = models.CharField(max_length = 30)
   	nombre = models.CharField(max_length = 30)
	apellido = models.CharField(max_length = 30)
	fecha_de_Nacimiento = models.DateTimeField()
	departemento = models.IntegerField() # son llaves foraneas a la ubicion
	municipio =	models.ForeignKey('Municipio') #Son llaves foraneas a la ubicaion 
	residencia = models.ForeignKey('Departamento')
	 # creo llave foranea a departamento
class AcademicHystory(models.Model):
#Historial academico este historial es enlazado como foren key a una persona
	def __unicode__(self):
		return self
	idDataPerson = models.IntegerField() # son llaves foraneas a la DataPerson
	TitleName = models.CharField(max_length = 30)
	DateStart = models.DateTimeField()
	DateEnd = models.DateTimeField()
	InstitutionName = models.CharField(max_length = 120)
	Descripcion = models.TextField();
	
class WorkHistory(models.Model):
	#History laboral va enlazado con el id de los datos personsales
	def __unicode__(self):
		return self
	idDataPerson = models.IntegerField() # son llaves foraneas a la DataPerson
	WorkLocalitation =  models.CharField(max_length = 30)
	DateStart = models.DateTimeField()
	DateEnd = models.DateTimeField()
class Course(models.Model):
	def __unicode__(self):
		return self
	idTeacher = models.IntegerField() # Llave a profesor del curso
	CourseName = models.CharField(max_length = 30)
	DateStart = models.DateTimeField()
	DateEnd = models.DateTimeField()

#Informacion regional mauricio Castillo
class Departamento(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self
	iddepartamento = models.CharField(max_length = 50)
	nombre = models.CharField(max_length = 50)

class Municipio(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self.nombreMunicipio
	idmunicipio = models.CharField(max_length = 50)
	nombreMunicipio = models.CharField(max_length = 50)
	departamento_iddepartamento = models.CharField(max_length = 50)
#Fin informacion regional



		
class MainPost(admin.ModelAdmin):
	lis_display = ('Title','Body') 

#Agrego el modelo al panel de administracion
admin.site.register(Departamento)
admin.site.register(Municipio)
admin.site.register(BodyPanelAdmin, MainPost)
admin.site.register(AcademicHystory)
admin.site.register(WorkHistory)
admin.site.register(Course)
admin.site.register(DataPerson)

