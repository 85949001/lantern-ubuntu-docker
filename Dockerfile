FROM ubuntu:20.04
WORKDIR /root
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install libappindicator3-1
RUN apt-get -y install libpcap0.8:amd64
#RUN apt-get -y install privoxy
RUN apt-get -f install
RUN apt-get clean
RUN rm -rf /var/cache/apt/* /var/lib/apt/lists/*
