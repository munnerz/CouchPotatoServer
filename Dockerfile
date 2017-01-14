FROM alpine:3.5

RUN apk add --no-cache \
        ca-certificates \
        git \
        python \
        py2-pip py2-openssl py-libxml2 py2-lxml

ADD . /app

WORKDIR "/app"

EXPOSE 5050

ENTRYPOINT ["python2.7", "CouchPotato.py", "--console_log"]
