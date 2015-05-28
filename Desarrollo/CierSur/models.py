from django.db import models
from django.contrib import admin
from django.core.validators import MaxValueValidator, MinValueValidator
# Create your models here.
#Construido Por Mauro Castillo 
'''
Notas de funcionamiento la interfaces disponibles para el administrador solo estan disponibles
a traves del adminitrator de django

La creacion del los usuarios que tienien accesos a sistema lo realiza el administrador

'''
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
	ano_de_Nacimiento = models.ForeignKey('Year')
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
class AditionalDate(models.Model):
#Historial academico este historial es enlazado como foren key a una persona
#Esta inteface esta disponible para todo los usuarios.
	def __unicode__(self):
		return self.numero_identificacion
	numero_identificacion = models.CharField(max_length = 30)  # son llaves foraneas a la DataPerson
	#year_de_nacimiento = models.ForeignKey('Year')
	ano_de_Nacimiento = models.ForeignKey('Year')
	dia_de_Nacimiento = models.ForeignKey('Day')
	mes_de_Nacimiento = models.ForeignKey('Month')
	sexo = models.ForeignKey('Sex')
	zona_donde_labora = models.ForeignKey('Zona')
	Labor_docente_institucion = models.ForeignKey('Caracter')
	etno_educativamente_orientada_hacia = models.ForeignKey('Etnia')
	nivel_escolar_de_su_labor = models.ForeignKey('Nivel_escolar')
#-----------------------Informacion laboral-------------------------------------#
	experiencia_prescolar = models.IntegerField()
			
	anos_de_experiencia_Basica_primaria = models.IntegerField()

	anos_de_experiencia_Basica_secundaria = models.IntegerField()

	anos_de_experiencia_Educion_media = models.IntegerField()

	anos_de_experiencia_Educion_superior = models.IntegerField()
#Esta clase contiene los registros de los curso y sus docentes asiganados.	
#Esta interface esta disponivle para el administrados
class Course(models.Model):
	def __unicode__(self):
		return self.CourseName
	Docente_encargado = models.ForeignKey('DataPerson')
	CourseName = models.CharField(max_length = 30)
	Actividad_1 = models.ForeignKey('Actividades_curso')

#Docentes que ha sido selecionados para asistir a los curso los represento como una relacion en la base de datos
class Selecionados_Aspirantes(models.Model):
	def __unicode__(self):
		return self.Docentes
	docente = models.ForeignKey('DataPerson')
	
#Curso persona esta clase contiene la relacion de muchos a muchos entre los docentes y los cursos disponibles
#Esta interface es ta disponible para todos los usuarioa
class Course_student(models.Model):
	def __unicode__(self):
		return self.curso
	curso = models.ForeignKey('Course')
	docente = models.ForeignKey('DataPerson')

#Informacion regional ______________________Mauricio Castillo______________________Recursos_Y Artefactos utilizados___________________________________________________
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

class Etnia(models.Model):
	def __unicode__(self):
		return self.etnia
	etnia = models.CharField(max_length = 30)

class Nivel_escolar(models.Model):
	def __unicode__(self):
		return self.nivel
	nivel = models.CharField(max_length = 30)

class Actividades_curso(models.Model):
	def __unicode__(self):
		return self.nombre
	curso = models.ForeignKey('Course')
	nombre = models.CharField(max_length = 20)
	descripcion = models.TextField(max_length = 30)

#Fin informacion regional		
class MainPost(admin.ModelAdmin):
	lis_display = ('Title','Body') 

#Agrego el modelo al panel de administracion
admin.site.register(Selecionados_Aspirantes)
admin.site.register(Course_student)
admin.site.register(Actividades_curso)
admin.site.register(Day)
admin.site.register(Month)
admin.site.register(Year)
admin.site.register(Departamento)
admin.site.register(Municipio)
admin.site.register(BodyPanelAdmin, MainPost)
admin.site.register(AditionalDate)

admin.site.register(Course)
admin.site.register(Nivel_escolar)
admin.site.register(Zona)
admin.site.register(Areas)
admin.site.register(Etnia)
admin.site.register(Caracter)
admin.site.register(DataPerson)

