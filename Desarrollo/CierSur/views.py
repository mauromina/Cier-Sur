from django.shortcuts import render
from django.views.generic import TemplateView
from django.template import loader, Context
from django.http import HttpResponse
from CierSur.models import *
from .forms import NewDataperson
from .forms import NewAcademicHystory
from .forms import Curso_estudiante
from .forms import Curso_calificar
from django.http import HttpResponseRedirect
from django.core.context_processors import csrf


# Create your views here.
#Variables
#DataPerson objDataperson

class HomeView(TemplateView):
	template_name = 'home.html'
class ReportView(TemplateView):
  template_name = 'reportes.html'

class InView(TemplateView):
  template_name = 'ingreso.html'


class RegisterView(TemplateView):
  template_name = 'registro.html'


def login(request):
	cuerpo = user.objects.all()
	mi_template =loader.get_template("index.html")
	mi_contexto = Context({'posts': cuerpo})
	return HttpResponse(mi_template.render(mi_contexto))

def addDataPersonForm(request):
	if request.method == 'POST':
  		form = NewDataperson(request.POST)
  		if form.is_valid():
  			form.save()

  			return HttpResponseRedirect('/academicHistory')
	else:
		form = NewDataperson()

	return render(request,'registro.html', {
    	'form':form,
    	})


def addAcademicHystory(request):
	if request.method == 'POST':
  		form = NewAcademicHystory(request.POST)
  		if form.is_valid():
  			form.save()

  			return HttpResponseRedirect('/')
	else:
		form = NewAcademicHystory()

	return render(request,'registro_HystoryAcademic.html', {
    	'form':form,
    	})


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


