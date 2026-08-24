FROM dev-cpp:common

ARG GSTREAMER_VERSION=1.26

USER root
RUN apk add --no-cache \
    gstreamer \
    gstreamer-dev \
    gstreamer-tools \
    gst-plugins-base \
    gst-plugins-base-dev \
    gst-plugins-good \
    gst-plugins-bad \
    gst-libav
USER dev

ENV GSTREAMER_VERSION=${GSTREAMER_VERSION}
