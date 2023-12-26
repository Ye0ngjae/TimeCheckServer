FROM python:3.8-windowsservercore

RUN pip install flask

WORKDIR /app
COPY ./ /app

ENTRYPOINT ["python", "app.py"]