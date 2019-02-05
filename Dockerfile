FROM ubuntu:18.04 as base
RUN apt-get update
RUN apt-get install -y curl wget
RUN apt-get install -y vim tmux
RUN apt-get install -y gnupg
RUN apt-get install -y git
RUN apt-get install -y locales
RUN apt-get install -y bash-completion

RUN locale-gen en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LC_ALL en_US.UTF-8
COPY bashrc.sh /root/.bashrc

# Common Vim Setup
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY vimrc.vim /root/.vimrc
RUN vim +PluginInstall +qall
