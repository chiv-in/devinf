ARG BASE_IMAGE
FROM $BASE_IMAGE
RUN \
    apk --no-cache --update add \
        openjdk17-jre \
        && \
    rm -rf /var/cache/apk/*
