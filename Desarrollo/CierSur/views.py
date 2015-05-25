from django.shortcuts import render
from django.http import HttpResponse
from CierSur.model import persona
from django.template import loader Context
from django.http import HttpResponse
import datetime

# Create your views here.
def archive(request):
	post = persona.objects.all()
	mi_template = loader.get_template("index.html")
	mi_contexto = Context({'posts':posts})
	return HttpResponse(mi_template.render(mi_contexto))


#ejemplo de views

def current_datetime(request):
    now = datetime.datetime.now()
    html = "<html><body>It is now %s.</body></html>" % now
    return HttpResponse(html)

