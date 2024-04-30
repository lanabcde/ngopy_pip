#!/bin/bash

# Aktifkan lingkungan virtual
# Pastikan bahwa Anda telah mengatur PIPENV_ACTIVE sebelumnya
# Misalnya, dengan menjalankan "pipenv shell" sebelumnya
if [ -z "$PIPENV_ACTIVE" ]; then
    echo "Error: Pipenv environment is not activated."
    exit 1
fi

# Install dependensi dari Pipfile.lock
pipenv install --deploy --ignore-pipfile

# Jalankan langkah tambahan build jika diperlukan
# Contohnya, kumpulkan berkas statis
pipenv run python manage.py collectstatic
