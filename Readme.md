# Qpid Broker J

Simple docker container to spin up a QPid Broker J with a webinterface. 
This image is considered for local development against an AMQP 1.0 Message Broker without any hassle. 
This image can be pulled from ``docker pull gcxoliverschmitz/brokerj``.

## Use
This image is pre-build, you can use it out of the box. You can use it 
by issuing followed command:

```docker run -d -p 8080:8080 -p 5672:5672 gcxoliverschmitz/brokerj```

or using docker compose:

```yaml
version: "3"
services:
  broker:
    image: grandcentrix/qpid:8.0.6
    build:
      context: docker/
    container_name: amqp-1-0-broker
    ports:
      - "8080:8080"
      - "5672:5672"
```

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