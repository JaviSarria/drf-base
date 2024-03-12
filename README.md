# drf-base
Django Rest-Framework squeleton base project

Configuration settings:
1) Spanish
2) Time zone Madrid
3) Default security: readonly for anon / Authentication with token if you want to change
4) project_name= 'project' / app_name = 'api'
5) entity example with models and viewset and permission and authentication with token


Steps:
1) Create virtual env in root folder:
    python -m venv .venv
2) Open virtuan env:
    Linux:
        source ./venv/bin/activate
    Windows:
        cd ./venv/Scripts
        ./activate
3) Upgrade pip:
    python.exe -m pip install --upgrade pip
4) Install Django Rest Framework
    Linux:
        source ./django.sh [project_name] [app_name]
    Windows:
        ./django.bat [project_name] [app_name]
5) Adapt models, views, serializers, etc... for the porject
6) After changes in Models, execute:
    python3 manage.py makemigrations
    python3 manage.py migrate
7) Enjoy:
    python3 manage.py runsherver