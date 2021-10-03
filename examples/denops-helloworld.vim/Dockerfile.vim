FROM ghcr.io/vim-denops/vim

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      curl \
      ca-certificates \
      ripgrep

ARG VERSION=main
RUN curl -sSL https://github.com/vim-denops/denops-helloworld.vim/archive/${VERSION}.tar.gz \
  | tar xz \
 && deno cache --unstable */denops/**/*.ts
