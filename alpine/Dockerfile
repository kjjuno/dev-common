FROM alpine
RUN apk update
RUN apk add curl wget vim tmux git bash

# Common Vim Setup
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY vimrc.vim /root/.vimrc
RUN vim +PluginInstall +qall

ENTRYPOINT ["/bin/bash"]
