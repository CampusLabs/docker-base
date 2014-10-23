FROM debian:wheezy
MAINTAINER Clifton King <cliftonk@gmail.com>

RUN echo "nameserver 8.8.8.8\nnameserver 8.8.4.4" > /etc/resolv.conf
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y \
        wget=1.13.4-3+deb7u1 \
        sudo=1.8.5p2-1+nmu1 \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
