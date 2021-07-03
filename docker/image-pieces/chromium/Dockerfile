ARG BASE_IMAGE
FROM $BASE_IMAGE
RUN \
    apk add --no-cache --update \
        nss \
        freetype \
        freetype-dev \
        harfbuzz \
        ttf-freefont \
        chromium \
        && \
    apk add --no-cache --update \
        --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community \
        font-noto \
        font-noto-emoji \
        && \
    apk add --no-cache --update \
        --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing \
        wqy-zenhei \
        && \
    rm -rf /var/cache/apk/*
