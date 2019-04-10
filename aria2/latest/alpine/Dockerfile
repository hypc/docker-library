FROM alpine:edge

MAINTAINER hypc <h_yp00@163.com>

RUN apk update && apk add --no-cache --update aria2
RUN mkdir -p /conf && mkdir -p /data && mkdir -p /conf-copy

ADD files/start.sh /conf-copy/start.sh
ADD files/aria2.conf /conf-copy/aria2.conf
ADD files/on-complete.sh /conf-copy/on-complete.sh

VOLUME ["/data"]
VOLUME ["/conf"]

EXPOSE 6800
CMD ["/conf-copy/start.sh"]

