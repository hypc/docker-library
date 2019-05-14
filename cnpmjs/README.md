# Supported tags and respective Dockerfile links

* [`2.19.4`][2.19.4], [`latest`][2.19.4]
* [`3.0.0-alpha.15`][3.0.0-alpha.15]

[2.19.4]: https://github.com/hypc/docker-library/tree/master/cnpmjs/2.19.4/Dockerfile
[3.0.0-alpha.15]: https://github.com/hypc/docker-library/tree/master/cnpmjs/3.0.0-alpha.15/Dockerfile

# What is cnpmjs

# How to use this image

## Start a cnpmjs server instance

```bash
docker run --name cnpmjs -p 7001:7001 -p 7002:7002 -d hypc/cnpmjs
```

## Start a cnpmjs server instance with compose

```yaml
version: '2'
services:
  cnpmjs:
    image: hypc/cnpmjs
    container_name: cnpmjs
    restart: always
    ports:
      - 7001:7001
      - 7002:7002
```

