FROM ubuntu:23.04

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /var/benchmar

WORKDIR /var/benchmark

# bases para instalação
RUN apt-get update && apt-get install -y --no-install-recommends \
    gnupg2 \
    curl \
    ca-certificates \
    zip \
    unzip \
    lsb-release \
    apt-transport-https \
    build-essential \
    openssh-client

RUN apt-get install -y \
    golang-go \
    jq \
    apache2-utils

# WRK
RUN go install github.com/tsliwowicz/go-wrk@latest

RUN cp /root/go/bin/go-wrk /usr/bin/go-wrk

# infinte loop
CMD ["/bin/bash", "-c", "sleep infinity"]