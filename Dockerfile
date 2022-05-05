FROM python:alpine3.15

COPY app /app

WORKDIR /app 

RUN pip install beautifulsoup4 pandas

CMD [ "python", "app.py" ]