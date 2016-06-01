"   Filename: .vimrc
"   Author:   yangguozhanzhao
"   Version:  0.1
"   Email:    728074993@qq.com
"=============================================

"==================================
"    Vim基本配置
"===================================

"关闭vi的一致性模式 避免以前版本的一些Bug和局限
set nocompatible
"配置backspace键工作方式
set backspace=indent,eol,start

"显示行号
set number
"设置在编辑过程中右下角显示光标的行列信息
set ruler
"当一行文字很长时取消换行
"set nowrap

"在状态栏显示正在输入的命令
set showcmd

"设置历史记录条数
set history=1000

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

"突出现实当前行列
"set cursorline
"set cursorcolumn

"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch

"设置C/C++方式自动对齐
set autoindent
set cindent

"开启语法高亮功能
syntax enable
syntax on

"指定配色方案为256色
set t_Co=256

"设置搜索时忽略大小写
set ignorecase

"设置在Vim中可以使用鼠标 防止在Linux终端下无法拷贝
set mouse=a

"设置Tab宽度
set tabstop=4
"设置自动对齐空格数
set shiftwidth=4
"设置按退格键时可以一次删除4个空格
set softtabstop=4
"设置按退格键时可以一次删除4个空格
set smarttab
"将Tab键自动转换成空格 真正需要Tab键时使用[Ctrl + V + Tab]
set expandtab

"设置编码方式
set encoding=utf-8
"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on



"==========================
"Vundle的配置
"==========================

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"使用Vundle来管理Vundle
Bundle 'gmarik/vundle'
"PowerLine插件 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
"vim有一个状态栏 加上powline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powline_symbols='fancy'
Bundle 'The-NERD-tree'

"Vundle配置必须 开启插件
filetype plugin indent on
