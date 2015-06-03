from django.shortcuts import render
from django.views.generic import TemplateView
from django.template import loader, Context
from django.http import HttpResponse
from CierSur.models import *
from .forms import NewDataperson
from .forms import NewAcademicHystory,NewLaboralHystory
from .forms import Curso_estudiante
from .forms import Curso_calificar
from .forms import MasterTeacher
from django.http import HttpResponseRedirect
from django.core.context_processors import csrf
import MySQLdb
from django.shortcuts import render_to_response
from django.db.models import Count
from .models import Etnia,Inscripcion_cursos
from django.contrib.auth import authenticate, login


# Create your views here.
#Variables
#DataPerson objDataperson



def reportView(request):
  queryset = Etnia.objects.all().filter(etnia__icontains = "Etnia afrocolombiana" )
  context = {
    'queryset' : queryset

  }
  return render(request,"reportes.html",context)

#Agregar datos Personales del docente
def addDataPersonForm(request):
	if request.method == 'POST':
  		form = NewDataperson(request.POST)
  		if form.is_valid():
  			form.save()

  			return HttpResponseRedirect('/registro/academicHistory/')
	else:
		form = NewDataperson()

	return render(request,'registro.html', {
    	'form':form,
    	})

  

#agregar Informacion adicional de docente
def addAcademicHystory(request):
	if request.method == 'POST':
  		form = NewAcademicHystory(request.POST)
  		if form.is_valid():
  			form.save()

  			return HttpResponseRedirect('/registro/laboralHistory/')
	else:
		form = NewAcademicHystory()

	return render(request,'registro_HystoryAcademic.html', {
    	'form':form,
    	})

def addLaboralHystory(request):
  if request.method == 'POST':
      form = NewLaboralHystory(request.POST)
      if form.is_valid():
        form.save()

        return HttpResponseRedirect('/')
  else:
    form = NewLaboralHystory()

  return render(request,'registro_HystoryLaboral.html', {
      'form':form,
      })
#agregar master teacher
def addMasterTeacher(request):
  if request.method == 'POST':
      form = MasterTeacher(request.POST)
      if form.is_valid():
        form.save()
        print "Estube aqui"

        return HttpResponseRedirect('/')
  else:
    form = MasterTeacher()


  return render(request,'MasterTeacher.html', {
      'form':form,
      })

#creacion de cursos
def curso_estudiante(request):
	if request.method == 'POST':
  		form = Curso_estudiante(request.POST)
  		if form.is_valid():
  			form.save()

  			return HttpResponseRedirect('/')
	else:
		form = Curso_estudiante()

	return render(request,'curso_estudiante.html', {
    	'form':form,
    	})
#Funcionalida de calificar
def curso_calificar(request):
  if request.method == 'POST':
      form = Curso_calificar(request.POST)
      if form.is_valid():
        form.save()

        return HttpResponseRedirect('/')
  else:
    form = Curso_calificar()

  return render(request,'calificar_curso.html', {
      'form':form,
      })


def cuerpo(request):
  cuerpo = Inscripcion_cursos.objects.values('id').annotate(jobtitle_count=Count('curso')).order_by('-jobtitle_count')[:5]
  mi_template =loader.get_template("cuerpo.html")
  mi_contexto = Context({'names': cuerpo})
  return HttpResponse(mi_template.render(mi_contexto))
