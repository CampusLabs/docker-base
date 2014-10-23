FROM debian:wheezy
MAINTAINER Clifton King <cliftonk@gmail.com>

RUN apt-get update \
    && apt-get install -y \
        wget=1.13.4-3+deb7u1 \
        git=1:1.7.10.4-1+wheezy1 \
    && rm -rf /var/lib/apt/lists/*
