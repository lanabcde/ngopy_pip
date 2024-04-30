# Install dependencies from Pipfile.lock
pip install --no-cache-dir pipenv
pipenv install --deploy --ignore-pipfile || exit 1

# Run any additional build steps if needed
# For example, collect static files
pipenv run python manage.py collectstatic || exit 1
