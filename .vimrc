set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()	
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'iamcco/markdown-preview.nvim' "安装方法： 1. PluginInstall 2. 进入经济~/.vim/bundle/markdown-preview.nvim/app目录，
				      "运行install.sh文件 3.修改 ~/.vim/bundle/markdown-preview.nvim/app/server.js文件，
				      "将      const host = openToTheWord ? '0.0.0.0' : '127.0.0.1'
				      "修改为  const host = '0.0.0.0'
				      "这个配置可以解决markdown preview
				      "不能够局域网ip访问网页的问题
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
