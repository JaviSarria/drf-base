@ECHO OFF
:: Script Instalación Django Windows (django.bat)

:: EJECUTAR ANTES ESTOS COMANDOS
::  python -m venv .venv
::  .venv\Scripts\activate
::  Se requiere un archivo 'requirements.txt' en la carpeta raiz
::  Con los siguientes módulos:
::      django
::      djangorestframework
::      markdown
::      django-filter

IF "%1" EQU "" GOTO Usage ELSE GOTO Install

:Install
python -m pip install -r ./requirements.txt
django-admin.exe startproject %1 .

IF "%2" NEQ "" GOTO Install_app ELSE GOTO Migrations
:Install_app
    python manage.py startapp %2
    mkdir templates\%2
    mkdir fixtures
    echo "No olvides registrar tu app '$2' en settings.py"

:Migrations
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser --username admin --email admin@admin.com

echo "---------------------------------------------"
echo "Customize settings.py:"
echo "	- LANGUAGE_CODE
echo "	- TIME_ZONE
echo "  - Register applications: 'rest_framework and '%2'"
GOTO exit

:Usage 
echo "---------------------------------------------"
echo "ERROR: Use: django.sh 'project_name' ['app_name']"

:exit