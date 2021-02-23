ARG BASE_IMAGE
FROM $BASE_IMAGE
RUN \
    apk add --no-cache --update \
        openjdk11-jdk \
        maven \
        && \
    rm -rf /var/cache/apk/*
