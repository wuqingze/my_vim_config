set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()	
Plugin 'VundleVim/Vundle.vim'         " vim插件管理工具，安装可以运行git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim命令
Plugin 'scrooloose/nerdtree'          " 目录管理工具
Plugin 'ctrlpvim/ctrlp.vim'           " 文件搜索工具
Plugin 'iamcco/markdown-preview.nvim' "安装方法： 1. PluginInstall 2. 进入经济~/.vim/bundle/markdown-preview.nvim/app目录，
				      "运行install.sh文件 3.修改 ~/.vim/bundle/markdown-preview.nvim/app/server.js文件，
				      "将      const host = openToTheWord ? '0.0.0.0' : '127.0.0.1'
				      "修改为  const host = '0.0.0.0'
				      "这个配置可以解决markdown preview
				      "不能够局域网ip访问网页的问题
Plugin 'junegunn/vim-easy-align'      " 文本对齐
call vundle#end()            " required
filetype plugin indent on    " required
set nu                       " 设置行号
set autoindent               " 自动缩进
inoremap jj <Esc>            " jj 键代替esc键实现vim插入模式退出
set shiftwidth=4      
set ignorecase		     " 搜索忽略大小写;如果存在大写，则大小写敏感 
set smartcase                " 搜索忽略大小写;如果存在大写，则大小写敏感 
set noswapfile               " 不备份，讨厌.~文件,一段时间下来，发现备份还是挺讨厌的,而且平时也有随时w的习惯，更有掌控感
map <C-o> :NERDTreeToggle<CR>         " ctrl + o 快捷键用来开启/关闭NERDTree插件
set encoding=utf-8                    " 解决中文乱码问题
set fileencodings=ucs-bom,utf-8,cp936 " 解决中文乱码问题
set fileencoding=gb2312               " 解决中文乱码问题 
set termencoding=utf-8                " 解决中文乱码问题

" use a custom port to start server or random for empty
let g:mkdp_port = '2002'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" TAB产生4个空格：
set ts=4  			" (注：ts是tabstop的缩写，设TAB宽4个空格)
set expandtab
