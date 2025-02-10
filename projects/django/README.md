python3 -m venv venv
source ./venv/bin/activate
pip install --upgrade pip

pip install django 
pip install djangorestframework
pip install django-rest-swagger

django-admin startproject server .
python manage.py startapp <AppName>
python manage.py makemigrations
python manage.py migrate
python manage.py runserver