FROM node:6-alpine

ARG VERSION=3.2.3

RUN npm install -g gitbook-cli \
    && gitbook fetch ${VERSION} \
    && npm cache clear \
    && rm -rf /tmp/*

EXPOSE 4000
CMD ["gitbook", "serve"]