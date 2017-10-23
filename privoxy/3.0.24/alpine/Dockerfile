FROM alpine:3.4

RUN apk --no-cache add privoxy

EXPOSE 8118
CMD ["privoxy", "--no-daemon", "/etc/privoxy/config"]
