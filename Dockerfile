FROM python:3.9

WORKDIR /django_hw_4

COPY ./django_hw_4 /django_hw_4

RUN pip install -r requirements.txt

ENV SECRET_KEY wqevrbntjykliyuktyjrthr

ENV DEBUG True

RUN python manage.py migrate
RUN python manage.py migrate measurement


EXPOSE 8000

CMD gunicorn stocks_products.wsgi -b 0.0.0.0:8000