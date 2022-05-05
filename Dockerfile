FROM python:3.7-slim

RUN apt update && apt upgrade --yes

COPY app /app

WORKDIR /app 

RUN pip install beautifulsoup4 pandas

CMD [ "python", "app.py" ]