FROM ubuntu:latest

WORKDIR /

RUN apt-get update
RUN apt-get install -y mysql-client python3 python3-flask python3-pymysql python3-boto3

COPY . /

EXPOSE 80

CMD ["python3", "EmpApp.py", "runserver", "0.0.0.0:80"]

