FROM python:3
MAINTAINER Adrian Kubica

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

COPY Pipfile Pipfile.lock ./
RUN pip install pipenv
RUN pipenv install --system

COPY ./app /app

RUN adduser --disabled-password user
USER user