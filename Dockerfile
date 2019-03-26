FROM ubuntu

RUN apt update && apt install -y --no-install-recommends python3-pip python3-setuptools python3-wheel

COPY requirements.txt /

RUN pip3 install -r requirements.txt


COPY . /app

ENV PATH="/app/scripts:${PATH}"
ENV PYTHONPATH="/app:${PYTHONPATH}"

WORKDIR /app/data
