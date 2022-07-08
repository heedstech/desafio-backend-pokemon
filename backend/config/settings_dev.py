from .settings import *


DEFAULT_FILE_STORAGE = 'django.core.files.storage.FileSystemStorage'
DATABASE_CONNECTION_POOLING = True


INSTALLED_APPS += [
    "django_extensions",
]

SHELL_PLUS = "ipython"

SHELL_PLUS_PRINT_SQL = True

NOTEBOOK_ARGUMENTS = [
    "--ip",
    "0.0.0.0",
    "--port",
    "8888",
    "--allow-root",
    "--no-browser",
]

IPYTHON_ARGUMENTS = [
    "--ext",
    "django_extensions.management.notebook_extension",
    "--debug",
]

IPYTHON_KERNEL_DISPLAY_NAME = "Django Shell-Plus"


os.environ["DJANGO_ALLOW_ASYNC_UNSAFE"] = "true"
