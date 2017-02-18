FROM ubuntu
MAINTAINER Yukimitsu Yabuki, yukimitsu.yabuki@gmail.com
RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install wget \
    && wget https://github.com/pachterlab/kallisto/releases/download/v0.43.0/kallisto_linux-v0.43.0.tar.gz \
    && tar xvfz kallisto_linux-v0.43.0.tar.gz \
    && cd kallisto_linux-v0.43.0 \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
WORKDIR /kallisto_linux-v0.43.0
ENTRYPOINT ["./kallisto"]
