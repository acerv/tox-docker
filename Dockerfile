FROM ubuntu:18.04

LABEL MAINTAINER="Andrea Cervesato <andrea.cervesato@mailbox.org>"

ENV DEBIAN_FRONTEND noninteractive

ENV TOX_VERSION 3.14.6

# add python repository
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    	software-properties-common \
    && add-apt-repository \
        ppa:deadsnakes/ppa

# install python versions
RUN apt-get update && apt-get install --no-install-recommends -y \
	python2.3-dev \
	python2.4-dev \
	python2.5-dev \
	python2.6-dev \
	python2.7-dev \
	python3.1-dev \
	python3.2-dev \
	python3.3-dev \
	python3.4-dev \
	python3.5-dev \
	python3.6-dev \
	python3.7-dev \
	python3.8-dev \
        wget \
    && apt-get purge -y --auto-remove \
    && rm -rf /var/lib/apt/lists/*

# install tox
RUN wget https://bootstrap.pypa.io/get-pip.py \
    && python3.7 get-pip.py \
    && rm -f get-pip.py \
    && pip install --no-cache-dir \
        tox==$TOX_VERSION
