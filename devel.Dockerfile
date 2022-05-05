FROM python:alpine3.15

WORKDIR /app 

RUN pip install beautifulsoup4

CMD [ "python", "app.py" ]