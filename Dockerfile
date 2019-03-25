FROM ubuntu

RUN apt update && apt install -y --no-install-recommends python3-pip python3-setuptools python3-wheel

COPY requirements.txt /

RUN pip3 install -r requirements.txt

WORKDIR /app
