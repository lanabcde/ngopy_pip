pipenv install --deploy --ignore-pipfile

# Run any additional build steps if needed
# For example, collect static files
python manage.py collectstatic
