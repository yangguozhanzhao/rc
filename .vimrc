"   Filename: .vimrc
"   Author:   yangguozhanzhao
"   Version:  0.1
"   Email:    728074993@qq.com
"=============================================

"==================================
"    Vim基本配置
"===================================
set nocompatible
set backspace=indent,eol,start "配置backspace
set number
set ruler
set showcmd "在状态栏显示正在输入的命令
set history=1000 "设置历史记录条数
set nobackup "设置取消备份 禁止临时文件生成
set noswapfile
set showmatch "设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set ignorecase "设置搜索时忽略大小写
set mouse=a "设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set tabstop=4 "设置Tab宽度
set shiftwidth=4 "设置自动对齐空格数
set softtabstop=4 "设置按退格时可以一次删除4个空格
set smarttab "设置按退格键时可以一次删除4个空格
set expandtab "将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set encoding=utf-8 "设置编码方式
filetype indent on "检测文件类型
filetype plugin on "允许插件
filetype plugin indent on "启动智能补全
syntax enable

"==========================
"Vundle的配置
"==========================

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
set laststatus=2 "vim有一个状态栏 加上powline则有两个状态栏
set t_Co=256
let g:Powline_symbols='fancy'

Bundle 'The-NERD-tree'
map <F3> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc']

Bundle 'Pydiction'
Bundle 'markdown'

Bundle 'altercation/vim-colors-solarized'
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

filetype plugin indent on "Vundle配置必须 开启插件

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F5 compile and run
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'sh'
        exec "!time bash %"
    elseif &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'mkd'
    endif
endfunc
