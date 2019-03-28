FROM ubuntu

RUN apt update && apt install -y --no-install-recommends libopenblas-base libopenblas-dev liblapack-dev python3-pip python3-setuptools python3-wheel python3-numpy python3-scipy python3-nose python3-dev

COPY requirements.txt /

RUN pip3 install -r requirements.txt


COPY . /app

ENV PATH="/app/scripts:${PATH}"
ENV PYTHONPATH="/app:${PYTHONPATH}"

WORKDIR /app/data
