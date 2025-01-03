FROM python:3.12.8-alpine3.21

EXPOSE 5000

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY wsgi.py config.py application/ ./

CMD [ "python", "wsgi.py" ]