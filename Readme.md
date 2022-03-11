# Qpid Broker J

Simple docker container to spin up a QPid Broker J with a webinterface. 
This image is considered for local development against an AMQP 1.0 Message Broker without any hassle.

## Build
To build the image feel free to use the provided `build.sh` or run `docker build -t grandcentrix/brokerj .` 
to build the latest image. 

## Ports
| Port | Description  |
|------|--------------|
| 8080 | Webinterface |
| 5672 | AMQP         |

## Authentication

Webinterface and AMQP uses the same user and password:

| User  | Password |
|-------|----------|
| guest | guest    |