# drf-base
Django Rest-Framework squeleton base project

Configuration settings:
1) Spanish
2) Time zone Madrid
3) Default security: readonly for anon / Authentication with token if you want to change
4) project_name= 'project' / app_name = 'api'
5) entity example with models and viewset and permission and authentication with token


Instalation and First Configuration Steps:
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

Test Steps:
1) Create mock data from database:
1.1) User mock data:
    python manage.py dumpdata --format=json auth.user > fixtures/user.json
1.2) Entity mock data:
    python manage.py dumpdata --format=json api.entity > fixtures/entity.json
2) Create tests for CRUD with every Model
3) Execute tests
    python manage.py test  