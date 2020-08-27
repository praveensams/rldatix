FROM ubuntu:xenial

RUN apt-get update \
    && apt-get install python3-dev python3-pip -y \
    && pip3 install --upgrade pip setuptools \
    && pip3 install flask

COPY apps.json /
COPY apps.py /mnt

WORKDIR "/mnt"

CMD ["python3","apps.py"]
