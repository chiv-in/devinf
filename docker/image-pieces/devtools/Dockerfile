ARG BASE_IMAGE
FROM $BASE_IMAGE
RUN \
    apk add --no-cache --update \
        sudo bash rsync git jq yq \
        && \
    echo "%wheel ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    addgroup ${APP_USER} wheel && \
    rm -rf /var/cache/apk/*
