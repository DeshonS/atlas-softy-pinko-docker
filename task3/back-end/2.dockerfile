FROM ubuntu:latest

RUN apt-get update

RUN apt-get install python3 -y

RUN apt-get install python3-pip -y

RUN rm /usr/lib/python*/EXTERNALLY-MANAGED

RUN pip install flask

RUN pip install flask-cors

RUN apt-get upgrade -y

COPY api.py /app/api.py

WORKDIR /app

EXPOSE 5252

CMD ["python3", "api.py"]