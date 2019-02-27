FROM ubuntu:18.04 as base
RUN apt-get update && \
    apt-get install -y curl wget vim tmux gnupg git locales bash-completion && \
    locale-gen en_US.UTF-8
    
ENV LC_CTYPE en_US.UTF-8 \
    LC_ALL en_US.UTF-8
    
COPY bashrc.sh /root/.bashrc \
     vimrc.vim /root/.vimrc

# Common Vim Setup
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

RUN vim +PluginInstall +qall
