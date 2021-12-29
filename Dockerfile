FROM alpine:latest as base

LABEL maintainer="Aleks Shubert<alex@shubert.ru>"

RUN addgroup -g 1000 space \
	&& adduser  --home "/home/space" -u 1000 -G space -D space

RUN apk add --update nodejs npm git \
	&& git clone https://github.com/bitnami-labs/readme-generator-for-helm \
	&& npm install -g readme-generator-for-helm

USER 1000
WORKDIR "/home/space"

FROM base AS service

ENTRYPOINT ["/usr/local/bin/readme-generator"]
