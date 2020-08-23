set nocompatible                      " be iMproved, required
filetype off                          " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()	
Plugin 'VundleVim/Vundle.vim'         " vim插件管理工具，安装可以运行git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim命令
Plugin 'scrooloose/nerdtree'          " 目录管理工具
Plugin 'ctrlpvim/ctrlp.vim'           " 文件搜索工具
Plugin 'iamcco/markdown-preview.nvim' " 安装方法： 1. PluginInstall 2. 进入经济~/.vim/bundle/markdown-preview.nvim/app目录，
                                      " 运行install.sh文件 3.修改 ~/.vim/bundle/markdown-preview.nvim/app/server.js文件，
                                      " 将      const host = openToTheWord ? '0.0.0.0' : '127.0.0.1'
                                      " 修改为  const host = '0.0.0.0'
                                      " 这个配置可以解决markdown preview
                                      " 不能够局域网ip访问网页的问题
Plugin 'junegunn/vim-easy-align'      " 文本对齐
Plugin 'vim-scripts/taglist.vim'      " 展示函数变量，函数 启用命令:TlistToggle
Plugin 'skywind3000/asyncrun.vim'     " 异步执行shell命令并在quickfix输出
call vundle#end()                     " required
filetype plugin indent on             " required
set nu                                " 设置行号
set autoindent                        " 自动缩进
inoremap jj <Esc>            " jj 键代替esc键实现vim插入模式退出
map ge $                     " 行尾
set shiftwidth=4      
set ignorecase                        " 搜索忽略大小写;如果存在大写，则大小写敏感
set smartcase                         " 搜索忽略大小写;如果存在大写，则大小写敏感
set noswapfile                        " 不备份，讨厌.~文件,一段时间下来，发现备份还是挺讨厌的,而且平时也有随时w的习惯，更有掌控感
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
set ts=4                              " (注：ts是tabstop的缩写，设TAB宽4个空格)
set expandtab

                                      " 一些有用的技巧
                                      " ggvG= 全局格式化
                                      " di(, di', di], vi(, vi', vi] 分别表示剪切()内的内容;剪切''内的内容;剪切[]内的内容;选择[]内的内容;选择[]内的内容;剪切选择内的内容;
                                      " sort r /regex 按照正则表达式进行排序
                                      " 例子
                                      " 121 [1] hllo4
                                      " 122 [2] hello3
                                      " 123 [1] hello1
                                      " 124 [2] hello2
                                      " git push 免密码
                                      " git push 免密码
                                      "
                                      " 最实用也最容易被遗忘的Linux命令行使用技巧
                                      " 将输出转化成一张表格  cat xx | column -t
                                      "
                                      "
"高亮当前行
color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
" 显示列号
set ruler

" 映射TlistToglle 文件结构
nnoremap <leader>f :TlistToggle<CR>

" 高亮搜索
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

nnoremap  <leader>g  :vimgrep

function! QFixToggle()
    if exists("g:qfix_win")
        cclose
        unlet g:qfix_win
    else
        copen 10
        let g:qfix_win = bufnr("$")
    endif
endfunction

" leader + q切换quickfix窗口
nnoremap <silent><expr> <Leader>q ':call QFixToggle()'."\n"

" leader + r 运行a.out并异步输出到quickfix窗口
nnoremap <silent><expr> <Leader>r ':copen'."\n".':AsyncRun ./a.out'."\n"
nnoremap <silent><expr> <Leader>c ':w'."\n".':!./a.out'."\n"

" F8：项目：运行
" F9：单文件：编译
" F10：打开/关闭底部的 quickfix 窗口

nnoremap <silent><expr> <F8> ':!./a.out'."\n"
nnoremap <silent><expr> <F9> ':!cc %'."\n"
" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <silent><expr> <F10> ':call QFixToggle()'."\n"
