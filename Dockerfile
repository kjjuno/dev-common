FROM ubuntu:18.04 as base
RUN apt-get update
RUN apt-get install -y curl wget
RUN apt-get install -y vim tmux
RUN apt-get install -y gnupg
RUN apt-get install -y git

# Common Vim Setup
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY .vimrc /root/
RUN vim +PluginInstall +qall
