FROM alpine:latest
MAINTAINER Ben White <ben@cuckoo.org>

RUN apk update && apk add bash python py-pip
RUN pip install exabgp ipaddr
ADD https://github.com/just-containers/s6-overlay/releases/download/v1.18.1.5/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C /
ADD root /
VOLUME /etc/exabgp
ENTRYPOINT ["/init"] 
