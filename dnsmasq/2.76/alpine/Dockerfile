FROM alpine:3.4

RUN apk --no-cache add dnsmasq \
    && mkdir /etc/dnsmasq.d \
    && echo "# Include all files in a directory which end in .conf" > /etc/dnsmasq.conf
    && echo "conf-dir=/etc/dnsmasq.d/,*.conf" >> /etc/dnsmasq.conf

EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-k"]
