#!/bin/bash

# Aktifkan lingkungan virtual
# Pastikan bahwa Anda telah mengatur PIPENV_ACTIVE sebelumnya
# Misalnya, dengan menjalankan "pipenv shell" sebelumnya
if [ -z "$PIPENV_ACTIVE" ]; then
    echo "Error: Pipenv environment tidak aktif. aktifkan sekarang..."
    pipenv shell || exit 1
fi

# Install dependensi dari Pipfile.lock
pipenv install --deploy --ignore-pipfile || exit 1

# Jalankan langkah tambahan build jika diperlukan
# Contohnya, kumpulkan berkas statis
pipenv run python manage.py collectstatic || exit 1
