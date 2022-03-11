FROM openjdk:8-jdk-alpine
MAINTAINER http://grandcentrix.net

RUN apk add bash

WORKDIR /usr/local/qpid
COPY apache-qpid-broker-j-8.0.6-bin.tar.gz .
RUN tar xvzf apache-qpid-broker-j-8.0.6-bin.tar.gz

ENV QPID_WORK=/var/qpidwork

EXPOSE 5672
EXPOSE 8080

ENTRYPOINT ["qpid-broker/8.0.6/bin/qpid-server"]