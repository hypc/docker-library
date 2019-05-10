# Supported tags and respective Dockerfile links

* [`3.0.0-alpha.15`][3.0.0-alpha.15]

[3.0.0-alpha.15]: https://github.com/hypc/docker-library/tree/master/cnpmjs/3.0.0-alpha.15/Dockerfile

# What is cnpmjs

# How to use this image

## Start a cnpmjs server instance

```bash
docker run --name cnpmjs -p 7001:7001 -p 7002:7002 -v ./cnpmjs_data:/var/data/cnpm_data -d hypc/cnpmjs
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
    volumes:
      - ./cnpm_data:/var/data/cnpm_data
    environment:
      - DEBUG=false
      - DB_DIALECT=sqlite
      - ENABLE_CLUSTER=true
      - SYNC_MODEL=exist
```

## Environment Variables

* DEBUG: 默认`false`，当前支持: `true`, `false`
* DB_DIALECT: 数据库类型，默认`sqlite`，当前支持: `mysql`, `sqlite`, `postgres`, `mariadb`
* DB_HOST:
* DB_PORT:
* DB_NAME:
* DB_USERNAME:
* DB_PASSWORD:
* SQL_DEBUG: 默认`false`，当前支持: `true`, `false`
* ENABLE_CLUSTER: 是否启用集群模式，默认`false`，当前支持: `true`, `false`
* ENABLE_PRIVATE: 私有模式下，只有admins可以publish，默认`false`，当前支持: `true`, `false`
* SYNC_MODEL: 同步模式，默认`exist`，当前支持: `none`, `all`, `exist`
* SYNC_INTERVAL: 同步频率，默认`10m`
* OFFICIAL_NPM_REGISTRY: 默认`https://registry.npmjs.com`
* OFFICIAL_NPM_REPLICATE: 默认`https://replicate.npmjs.com`
* SOURCE_NPM_REGISTRY: 默认`https://registry.npm.taobao.org`
* REGISTRY_HOST: 默认`r.cnpmjs.org`

