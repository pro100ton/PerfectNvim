FROM ubuntu:latest

LABEL maintainer="pro100ton@gmail.com"

RUN apt-get update && apt-get install -y \
  build-essential \
  curl \
  neovim \
  git \
  nodejs \
  npm \
  fzf \
  golang-go  \
  python3 \
  python3-pip \
  python3-venv \
  unzip \
  ripgrep
RUN useradd -m nvim_playground

USER nvim_playground

RUN mkdir /home/nvim_playground/.config
RUN mkdir /home/nvim_playground/.config/nvim
WORKDIR /home/nvim_playground/.config/nvim
COPY . . 
