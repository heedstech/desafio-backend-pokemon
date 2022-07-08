# pull official base image
FROM python:3.10

# set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory
WORKDIR /app

# Install OS Dependencies
RUN apt-get update \
    && apt-get install -y curl netcat

# install dependencies
COPY ./requirements /app/requirements

RUN pip install --upgrade pip \
    && pip install -r ./requirements/dev.txt

# copy entrypoint.sh
COPY ./entrypoint.sh /usr/src/entrypoint.sh

# Give entrypoint permitions
RUN chmod +x /usr/src/entrypoint.sh
