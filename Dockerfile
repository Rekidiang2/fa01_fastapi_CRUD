# docker run -p 8000:8000 fastapi-first

# dcker ps
# docker exec -it contanair-ID /bin/sh
FROM python:3.8

WORKDIR /fastapi-app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./app ./app

CMD ["python", "./app/main.py"]