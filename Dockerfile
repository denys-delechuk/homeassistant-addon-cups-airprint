FROM jmehan/docker-cups-airprint:latest

LABEL io.hass.version="1.0" io.hass.type="addon" io.hass.arch="aarch64|amd64"

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

COPY rootfs /

ENV CUPSADMIN="print"
ENV CUPSPASSWORD="print"

EXPOSE 631
