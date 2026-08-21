FROM dev-base

ARG PYTHON_VERSION=3.13

USER root
RUN apk add --no-cache \
    bash \
    build-base \
    zlib-dev \
    libffi-dev \
    openssl-dev \
    bzip2-dev \
    readline-dev \
    sqlite-dev \
    xz-dev
USER dev

ENV PYENV_ROOT=/home/dev/.pyenv
ENV PATH=${PYENV_ROOT}/bin:${PYENV_ROOT}/shims:${PATH}
RUN { \
  echo 'export PYENV_ROOT="$HOME/.pyenv"'; \
  echo 'export PATH="$PYENV_ROOT/bin:$PYENV_ROOT/shims:$PATH"'; \
} >> ~/.profile

RUN curl https://pyenv.run | bash && \
    pyenv install ${PYTHON_VERSION} && \
    pyenv global ${PYTHON_VERSION} 
