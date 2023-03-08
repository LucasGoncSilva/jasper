from os import environ

from JASPER.settings.base import *


DATABASES = {
    # 'default': URL
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': environ.get('DB_NAME'),
        'USER': environ.get('DB_USER'),
        'PASSWORD': environ.get('DB_PASSWORD'),
        'HOST': environ.get('DB_HOST'),
        'PORT': '5432',
    }
}

DEBUG = environ.get('DEBUG', False)
ALLOWED_HOSTS = environ.get('ALLOWED_HOSTS')
SECRET_KEY = environ.get('SECRET_KEY')


SECURE_PROXY_SSL_HEADER = ('HTTP_X_FORWARDED_PROTO', 'https')
SECURE_SSL_REDIRECT = True
