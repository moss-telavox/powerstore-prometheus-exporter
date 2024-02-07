FROM docker.io/library/python:3.11-slim-bullseye

RUN useradd -rm -d /app -s /bin/bash -g root -u 1001 app
USER app

WORKDIR /app/prometheus_exporter/
COPY requirements.txt ./
COPY powerstore_exporter.py ./

RUN pip install -r requirements.txt

CMD [ "python", "./powerstore_exporter.py" ]

