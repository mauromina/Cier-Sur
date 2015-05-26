from django.shortcuts import render
from django.views.generic import TemplateView
from django.template import loader, Context
from django.http import HttpResponse
from CierSur.models import *
from .forms import NewDataperson
from .forms import DataPersonForm

from django.http import HttpResponseRedirect
from django.core.context_processors import csrf


# Create your views here.

class HomeView(TemplateView):
	template_name = 'home.html'


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
  			return HttpResponseRedirect('/gracias')
	else:
		form = NewDataperson()

	return render(request,'registro.html', {
    	'form':form,
    	})

	'''
	if request.method == 'POST':
  		form = DataPersonForm(request.POST)
  		if form.is_valid():
  			return HttpResponseRedirect('/gracias')
  	else:
		form = DataPersonForm()

	return render(request,'registro.html', {
    	'form':form,
    	})'''





def gracias(request):
	html = '<html><body>"Gracias por inscribirse..."</body></html>'
	return HttpResponse(html)


class ReportView(TemplateView):
	template_name = 'reportes.html'

class InView(TemplateView):
	template_name = 'ingreso.html'


class RegisterView(TemplateView):
	template_name = 'registro.html'