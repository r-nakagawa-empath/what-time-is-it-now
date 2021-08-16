FROM python:3.8.6-buster
ARG SERVER_ROOT="/root/server/"

COPY config/requirements.txt /tmp/
RUN apt-get update -y && \
    apt-get upgrade -y && \
    python3 -m pip install --upgrade pip && \
    pip3 install -r /tmp/requirements.txt 

COPY src/ ${SERVER_ROOT}

WORKDIR /root
COPY entrypoint.sh /root/
ENTRYPOINT /root/entrypoint.sh

