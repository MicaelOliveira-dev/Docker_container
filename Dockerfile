FROM ubuntu:20.04

WORKDIR /app/drf_teste_documentacao

COPY . .

RUN apt update && apt install -y python3-venv

RUN python3 -m venv venv

RUN . venv/bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

RUN . venv/bin/activate && \
    python3 manage.py migrate && \
    echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@example.com', '123')" | . venv/bin/python manage.py shell

CMD . venv/bin/activate && python3 manage.py runserver
