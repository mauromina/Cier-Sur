from django.conf.urls import patterns, include, url
from django.contrib import admin
from CierSur.views import *

urlpatterns = patterns('',
    url(r'^admin/', include(admin.site.urls)),

    #url(r'^$', HomeView.as_view()),
    #modificacion de login
    url(r'^$' , 'django.contrib.auth.views.login', 
    	{'template_name' : 'ingreso.html'}, name = 'login'),

    url(r'^cerrar/$' , 'django.contrib.auth.views.logout_then_login', name = 'logout'),
# administrativa Sitio.
    #url(r'^registro/$' , RegisterView.as_view()),
    url(r'^ingreso/$',InView.as_view()),
    url(r'^reportes/$', ReportView.as_view()),

#Mauro castillo Funcionalida
    url(r'^registro/$', 'CierSur.views.addDataPersonForm', name='registro'),
    url(r'^gracias/$', 'CierSur.views.gracias', name='gracias'),
)
