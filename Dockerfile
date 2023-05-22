FROM python:3.11-alpine

RUN mkdir /web_django

WORKDIR /web_django

ENV ENV_DB_ENGINE=django.db.backends.sqlite3
ENV ENV_DB_NAME=db.sqlite3

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000

#RUN python manage.py migrate
# CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
#CMD ["gunicorn", "stocks_products.wsgi", "-b", "0.0.0.0:8000"]
