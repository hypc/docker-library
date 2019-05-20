FROM node:10.15

MAINTAINER hypc <h_yp00@163.com>

ENV CNPMJS_VERSION=c385f9d97f578e3a7ab4f826c57eb5becf42613d
ENV CNPM_DIR="/var/app/cnpmjs.org"

RUN mkdir -p ${CNPM_DIR}
WORKDIR ${CNPM_DIR}

RUN wget https://github.com/cnpm/cnpmjs.org/archive/${CNPMJS_VERSION}.tar.gz -O /tmp/${CNPMJS_VERSION}.tar.gz \
    && tar xvf /tmp/${CNPMJS_VERSION}.tar.gz -C /tmp \
    && mv /tmp/cnpmjs.org-${CNPMJS_VERSION}/* ${CNPM_DIR}/

RUN npm set registry https://registry.npm.taobao.org

RUN npm install

EXPOSE 7001/tcp 7002/tcp

# Entrypoint
CMD ["node", "dispatch.js"]

