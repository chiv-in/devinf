ARG BASE_IMAGE
FROM $BASE_IMAGE
RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        npm \
        && \
    apt-get clean && rm -rf /var/lib/apt/lists/
