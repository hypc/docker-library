docker-compose.yml

```
version: "2"
services:
    dnsmasq:
        image: hypc/dnsmasq:2.76-alpine
        ports:
            - 53:53/tcp
            - 53:53/udp
        restart: always
        volumes:
            - ./configs:/etc/dnsmasq.d
        cap_add:
            - NET_ADMIN
```
