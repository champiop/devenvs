FROM alpine:3.24

ARG USER_ID=1000
ARG GROUP_ID=1000

RUN apk update && apk add --no-cache \
  git \
  ca-certificates \
  curl \
  neovim \
  ripgrep \
  fzf

RUN addgroup -g ${GROUP_ID} dev && \
    adduser -D -u ${USER_ID} -G dev dev

COPY .profile /home/dev/.profile
COPY .ashrc /home/dev/.ashrc
COPY nvim /home/dev/.config/nvim

RUN chown -R dev:dev /home/dev

USER dev
WORKDIR /home/dev
CMD ["ash", "-l"]
