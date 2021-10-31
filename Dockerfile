FROM debian:latest
LABEL IEEE ComSoc
ENV PYTHONUNBUFFERED 1

COPY requirements/dev.txt requirements.txt

RUN pip install -r requirements.txt


WORKDIR /Core
COPY /design /design
COPY /Core /Core


EXPOSE 8080