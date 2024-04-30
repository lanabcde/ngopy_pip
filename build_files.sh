pipenv install --system
#!/bin/bash

# Collect static files (adjust command as needed)
python3 manage.py collectstatic

# Run Django application (adjust command as needed)
python3 wsgi.py
