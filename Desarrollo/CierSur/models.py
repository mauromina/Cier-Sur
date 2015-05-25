from django.db import models
from django.contrib import admin
# Create your models here.

class persona(models.Model):
	#Constructor por defecto
	def __unicode__(self):
              return self.nombre
	cedula = models.CharField(max_length = 50 , primary_key = True)
	nombre = models.CharField(max_length = 50)
	apellidos = models.CharField(max_length = 50)
	correo = models.CharField(max_length = 50)
	celular = models.CharField(max_length = 50)
	direccion = models.CharField(max_length = 50)
	sexo = models.CharField(max_length = 10)
	fecha = models.DateTimeField()

class login(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self
	id_cedula = models.ForeignKey('persona')
	password = models.CharField(max_length = 20)
	tipo = models.CharField(max_length = 10)

class aspirante(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self

	id_persona = models.ForeignKey('persona')
	sede = models.CharField(max_length = 50)
	institucion = models.CharField(max_length = 50)
	codigo = models.CharField(max_length = 20)
	grado = models.CharField(max_length = 20)
	secretaria = models.CharField(max_length = 20)
	nombreMunicipio = models.ForeignKey('municipio')
	area = models.CharField(max_length = 50)
	activoAspirante = models.BooleanField()
	#usuarioca = models.BooleanField(False)

class docente(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self
	id_cedula = models.ForeignKey('persona')
	tipo = models.CharField(max_length = 10)

class historial(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self
	i_cedula = models.IntegerField()
	zona = models.CharField(max_length = 20)
	modalidad = models.CharField(max_length = 20)
	especilaidades = models.CharField(max_length = 100)
	etnias = models.CharField(max_length = 100)
	niveles = models.CharField(max_length = 100)
	grados = models.CharField(max_length = 50)
	areas = models.CharField(max_length = 100)
	niveledu= models.CharField(max_length = 30)

class experiencia(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self
	id_cedula = models.IntegerField()
	preescolar = models.IntegerField()
	primaria = models.IntegerField()
	secundaria = models.IntegerField()
	media = models.IntegerField()
	superior = models.IntegerField()
	rural = models.IntegerField()
	urbano = models.IntegerField()
	publico = models.IntegerField()
	privado = models.IntegerField()
	total = models.IntegerField()

class curso(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self.nombre
	id_cedula = models.IntegerField()
	nombre = models.CharField(max_length = 50)
	semestre = models.CharField(max_length = 50)



class cohorte(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self
	id_curso = models.IntegerField()
	inicio = models.DateTimeField()
	fin = models.DateTimeField()

class actividad(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self.nombre
	id_curso = models.IntegerField()
	nombre = models.CharField(max_length = 50)

class nota(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self
	id_cohorte = models.IntegerField()
	id_estudiante =  models.ForeignKey('docente')
	id_actividad =  models.ForeignKey('actividad')
	nota = models.IntegerField()

class departamento(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self
	iddepartamento = models.IntegerField()
	nombre = models.CharField(max_length = 50)

class departamento(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self
	iddepartamento = models.CharField(max_length = 50)
	nombre = models.CharField(max_length = 50)

class municipio(models.Model):
		#Constructor por defecto
	def __unicode__(self):
              return self.nombreMunicipio
	idmunicipio = models.CharField(max_length = 50)
	nombreMunicipio = models.CharField(max_length = 50)
	departamento_iddepartamento = models.CharField(max_length = 50)



#Agregar al Panel
admin.site.register(municipio)
admin.site.register(departamento)
admin.site.register(nota)
admin.site.register(actividad)
admin.site.register(cohorte)
admin.site.register(experiencia)
admin.site.register(historial)
admin.site.register(docente)
admin.site.register(aspirante)
admin.site.register(login)
admin.site.register(persona)
admin.site.register(curso)