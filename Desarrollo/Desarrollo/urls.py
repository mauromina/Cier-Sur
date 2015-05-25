from django.conf.urls import patterns, include, url
from django.contrib import admin
#from CierSur.views import index
from CierSur.views import cuerpo

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^rendertest/', cuerpo),
]
