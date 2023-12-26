
FROM python:3.11.7-bullseye

WORKDIR /root/project

RUN apt-get -y update  && apt-get -y upgrade

# Install make
RUN apt-get -y install make

# RUN pip install pip==18.1

RUN pip install prefect

# COPY requirements.txt /tmp/requirements.txt

# RUN pip install -r /tmp/requirements.txt

ENV PYTHONPATH "/root/project/"

ENTRYPOINT ["tail", "-f", "/dev/null"]