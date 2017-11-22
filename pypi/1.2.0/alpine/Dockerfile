FROM alpine:3.5

RUN apk update \
    && apk add py-pip \
    && pip install --upgrade pip \
    && mkdir -p /srv/pypi \
    && pip install -U passlib pypiserver==1.2.0

VOLUME ["/srv/pypi"]

EXPOSE 80
COPY entrypoint.sh /
CMD ["./entrypoint.sh"]
