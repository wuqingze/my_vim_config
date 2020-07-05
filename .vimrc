set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()	
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'iamcco/markdown-preview.nvim'
call vundle#end()            " required
filetype plugin indent on    " required
set nu              
set autoindent 
inoremap jj <Esc>
set shiftwidth=4      
set ignorecase 
set smartcase
set noswapfile "不备份，讨厌.~文件,一段时间下来，发现备份还是挺讨厌的,而且平时也有随时w的习惯，更有掌控感
map <C-o> :NERDTreeToggle<CR>
