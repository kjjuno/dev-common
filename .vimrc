syntax enable
set nocompatible                 " be iMproved, required
filetype off                     " required
set number
set relativenumber

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'kien/ctrlp.vim'          "Best used with ctags, install at terminal

call vundle#end()                " required
filetype plugin indent on        " required

"////////////////////////////
"// CtrlP

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"The experience with CtrlP is enhance with ctags -- sudo apt-get install ctags
"Run ctags -R * at the root directory to generate a tags file.
"Ctrl] will take you to a definition file, and adds one to the visted tag stack, and ctrl-O pops one
"from the stack
set autochdir
set tags=tags;
