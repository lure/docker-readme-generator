FROM alpine:latest

LABEL maintainer="Aleks Shubert<alex@shubert.ru>"

RUN addgroup -g 1000 space \
    && adduser  --home "/data" -u 1000 -G space -D space \ 
    &&  apk add --update nodejs npm git \
    && git clone https://github.com/bitnami-labs/readme-generator-for-helm \
    && npm install -g readme-generator-for-helm

USER 1000
WORKDIR "/data"

ENTRYPOINT ["/usr/local/bin/readme-generator"]

CMD ["readme-generator", "-v", "values.yaml", "-r", "README.MD"]
