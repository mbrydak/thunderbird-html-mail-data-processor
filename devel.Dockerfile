FROM python:alpine3.15

AD

WORKDIR /app 

RUN pip install beautifulsoup4

CMD [ "python", "app.py" ]