#!/bin/bash

# Activate Pipenv virtual environment
source Pipenv/bin/activate

# Install dependencies from Pipfile
pipenv install --system

# Collect static files (adjust command as needed)
python3 manage.py collectstatic

# Run Django application (adjust command as needed)
python3 wsgi.py
