pipenv install --system
python3 manage.py collectstatic  # Kumpulkan file statis
python3 wsgi.py  # Jalankan server WSGI Django
