FROM nextcloud:apache

# Copied from https://github.com/nextcloud/docker/blob/master/.examples/dockerfiles/full/apache/Dockerfile
RUN set -ex; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        ffmpeg \
        ghostscript \
        libmagickcore-6.q16-6-extra \
    ; \
    rm -rf /var/lib/apt/lists/*
