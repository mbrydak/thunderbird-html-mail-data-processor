FROM python:alpine3.15

COPY app /app

WORKDIR /app 

RUN pip install beautifulsoup4

CMD [ "python", "app.py" ]