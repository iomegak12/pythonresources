FROM python:latest

ENV PYTHONUNBUFFERED 1

RUN mkdir /code

WORKDIR /code

ADD requirements.txt /code/

RUN pip3 install -r requirements.txt

ADD . /code/

EXPOSE 8000

WORKDIR /code/helloworld

ENTRYPOINT ../start.sh
