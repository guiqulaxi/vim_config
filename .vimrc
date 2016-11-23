" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
set nocompatible
set backspace=indent,eol,start
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" >>>>
" 插件安装

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()


Bundle 'VundleVim/Vundle.vim'
Bundle 'Shougo/neocomplete'
Bundle 'Valloric/ListToggle'
Bundle 'scrooloose/syntastic'
Bundle 'AutoComplPop' 
Bundle 'Rip-Rip/clang_complete'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" 插件列表结束
call vundle#end()
filetype plugin indent on
" <<<<

" 总是显示状态栏
set laststatus=2

" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline

" 高亮显示搜索结果
set hlsearch

" 开启语法高亮功能
syntax enable


" 自适应不同语言的智能缩进
"filetype indent on

" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
"
let g:clang_complete_copen=1
"let g:clang_periodic_quickfix=1
let g:clang_snippets=1
let g:clang_close_preview=1
let g:clang_use_library=1
let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'
let g:neocomplcache_enable_at_startup = 1

"syntastic"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


