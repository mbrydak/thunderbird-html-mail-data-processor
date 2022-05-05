FROM python:3.7-slim

COPY app /app

WORKDIR /app 

RUN pip install beautifulsoup4 pandas

CMD [ "python", "app.py" ]