FROM dev-base:common

USER root
RUN apk add --no-cache \
    bash \
    build-base \
    gcc \
    g++ \
    clang \
    clang-extra-tools \
    lldb \
    gdb \
    cmake \
    ninja \
    make \
    pkgconf \
    valgrind \
    linux-headers
USER dev

ENV CC=gcc
ENV CXX=g++

RUN { \
  echo 'export CC=gcc'; \
  echo 'export CXX=g++'; \
} >> ~/.profile
