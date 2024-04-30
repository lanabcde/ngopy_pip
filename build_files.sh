#!/bin/bash

# Install pipenv if not installed
if ! command -v pipenv &> /dev/null
then
    echo "pipenv not found, installing..."
    pip install pipenv
fi

# Activate virtual environment and install dependencies
pipenv install --deploy --ignore-pipfile

# Run any additional build steps if needed
# For example, collect static files
python manage.py collectstatic
