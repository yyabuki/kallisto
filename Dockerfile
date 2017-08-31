FROM ubuntu:latest
MAINTAINER Yukimitsu Yabuki, yukimitsu.yabuki@gmail.com
RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install wget \
    && wget -O kallisto-0.43.1.tar.gz https://github.com/pachterlab/kallisto/releases/download/v0.43.1/kallisto_linux-v0.43.1.tar.gz \
    && tar xvfz kallisto-0.43.1.tar.gz \
    && cd kallisto_linux-v0.43.1 \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
ENV PATH $PATH:/kallisto_linux-v0.43.1
RUN echo $PATH
WORKDIR /kallisto_linux-v0.43.1
