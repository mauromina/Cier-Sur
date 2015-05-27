from django.db import models
from django.contrib import admin
from django.core.validators import MaxValueValidator, MinValueValidator
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
		return '%s' % (self.nombre) 
	#datos personales
	#indentificador primario base de datos
	
	numero_identificacion = models.CharField(max_length = 30)
   	nombre = models.CharField(max_length = 30)
	apellido = models.CharField(max_length = 30)
	year_de_Nacimiento = models.ForeignKey('Year')
	dia_de_Nacimiento = models.ForeignKey('Day')
	mes_de_Nacimiento = models.ForeignKey('Month')
	sexo = models.ForeignKey('Sex')	
	departemento = models.ForeignKey('Departamento') # son llaves foraneas a la ubicion
	municipio =	models.ForeignKey('Municipio') #Son llaves foraneas a la ubicaion 
	residencia = models.CharField(max_length = 30)
	sede_a_la_que_pertenece = models.CharField(max_length = 30)
	institucion_a_la_que_pertenece = models.CharField(max_length = 30)
	grado = models.CharField(max_length = 30)
	secretaria_de_educacion = models.ForeignKey('EducationSecretary')
	area_de_inscripcion = models.ForeignKey('Areas')
	tiene_usuario_Colombia_Aprende = models.BooleanField()

# Recoleccion de datos adicional______________________________Mauro Castillo________________________________
class AcademicHystory(models.Model):
#Historial academico este historial es enlazado como foren key a una persona
	def __unicode__(self):
		return self.numero_identificacion
	numero_identificacion = models.CharField(max_length = 30)  # son llaves foraneas a la DataPerson
	#year_de_nacimiento = models.ForeignKey('Year')
	#ano_de_Nacimiento = models.ForeignKey('Year')
	dia_de_Nacimiento = models.ForeignKey('Day')
	mes_de_Nacimiento = models.ForeignKey('Month')
	sexo = models.ForeignKey('Sex')
	zona_donde_labora = models.ForeignKey('Zona')
	Labor_docente_institucion = models.ForeignKey('Caracter')

	titulo_Obtenido = models.CharField(max_length = 30)
	year_Inicio = models.ForeignKey('Year')
	duracion_Dias = models.IntegerField()
	institucion = models.CharField(max_length = 120)
	descripcion = models.TextField(max_length = 128);
	
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

#Informacion regional ______________________Mauricio Castillo___________________________________Recursos____________________________________________________
class Departamento(models.Model):
		#Constructor por defecto
	def __unicode__(self):
		return self.nombre
	iddepartamento = models.CharField(max_length = 50)
	nombre = models.CharField(max_length = 50)

class Municipio(models.Model):
		#Constructor por defecto
	def __unicode__(self):
		return self.nombreMunicipio
	idmunicipio = models.CharField(max_length = 50)
	nombreMunicipio = models.CharField(max_length = 50)
	departamento_iddepartamento = models.CharField(max_length = 50)

class Year(models.Model):
		#Constructor por defecto
	def __unicode__(self):
		return self.year
	year = models.CharField(max_length = 50)

class Day(models.Model):
		#Constructor por defecto
	def __unicode__(self):
		return self.day
	day = models.CharField(max_length = 50)
class Month(models.Model):
		#Constructor por defecto
	def __unicode__(self):
		return self.month
	month = models.CharField(max_length = 50)

class Sex(models.Model):
		#Constructor por defecto
	def __unicode__(self):
		return self.sex
	sex = models.CharField(max_length = 50)

class EducationSecretary(models.Model):
	def __unicode__(self):
		return self.secretary
	secretary = models.CharField(max_length = 30)

class Areas(models.Model):
	def __unicode__(self):
		return self.areas
	areas = models.CharField(max_length = 30)

class Zona(models.Model):
	def __unicode__(self):
		return self.zona
	zona = models.CharField(max_length = 30)

class Caracter(models.Model):
	def __unicode__(self):
		return self.caracter
	caracter = models.CharField(max_length = 30)

#Fin informacion regional



		
class MainPost(admin.ModelAdmin):
	lis_display = ('Title','Body') 

#Agrego el modelo al panel de administracion
admin.site.register(Day)
admin.site.register(Month)
admin.site.register(Year)
admin.site.register(Departamento)
admin.site.register(Municipio)
admin.site.register(BodyPanelAdmin, MainPost)
admin.site.register(AcademicHystory)
admin.site.register(WorkHistory)
admin.site.register(Course)
admin.site.register(DataPerson)

