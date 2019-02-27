FROM ubuntu:18.04 as base

COPY bashrc.sh /root/.bashrc
COPY vimrc.vim /root/.vimrc

ENV LC_CTYPE en_US.UTF-8 \
    LC_ALL en_US.UTF-8

RUN apt-get update && \
    apt-get install -y curl wget vim tmux gnupg git locales bash-completion && \
    locale-gen en_US.UTF-8 && \
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
    vim +PluginInstall +qall

