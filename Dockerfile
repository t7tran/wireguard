FROM linuxserver/wireguard:1.0.20210914

ENV \
    # https://github.com/msoap/shell2http/releases
    SHELL2HTTP_VERSION=1.17.0

RUN apk add --no-cache inotify-tools && \
    # install shell2http
    curl -fsSLo /tmp/shell2http.tar.gz https://github.com/msoap/shell2http/releases/download/v${SHELL2HTTP_VERSION}/shell2http_${SHELL2HTTP_VERSION}_linux_amd64.tar.gz && \
    tar -C /tmp -xvzf /tmp/shell2http.tar.gz && \
    mv /tmp/shell2http /usr/local/bin && \
    # clean up
    rm -rf /apk /tmp/* /var/cache/apk/*
