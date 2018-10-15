autocmd BufWritePost $MYVIMRC source $MYVIMRC

let mapleader=";"

filetype on
filetype plugin on

set number

set encoding=utf-8

set t_Co=256

set scrolloff=10

set smarttab

set tabstop=4

set shiftwidth=4

set expandtab

set smartindent

set noswapfile

set cursorline

set cursorcolumn

set softtabstop=4

set cmdheight=4

set showmatch

set showcmd

set autochdir

set hlsearch

set incsearch

set ignorecase

set nocompatible

set autowrite

set nowrap

syntax enable
"set background=dark
"colorscheme solarized

nmap J 5j

nmap K 5k

nmap LB 0

nmap LE $

nnoremap <Leader>bg <C-Z>

nnoremap nw <C-W><C-W>
"nnoremap <Leader>lw <C-W>l
"nnoremap <Leader>hw <C-W>h
"nnoremap <Leader>jw <C-W>j
"nnoremap <Leader>kw <C-W>k
"nnoremap <Leader>

nnoremap <Leader>M %


set gcr=a:block-blinkon0
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T


set laststatus=2
set ruler

set foldmethod=indent
set foldmethod=syntax
set nofoldenable

nmap <silent> <Leader>sw :FSHere<cr>

let g:Powerline_colorscheme='solarized256'

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'fatih/vim-go' "Go Language
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'mhinz/vim-signify' "git
Plugin 'vim-scripts/a.vim' "switch between header file and source file
Plugin 'vim-scripts/AutoTag' "update tags file when close file
Plugin 'luochen1990/rainbow' "rainbow parentheses
Plugin 'Chiel92/vim-autoformat'
Plugin 'liuchengxu/space-vim-dark' "color scheme


"Plugin 'lilydjwg/fcitx.vim'
" 插件列表结束
call vundle#end()
filetype plugin indent on

" Plugin-Config rainbow
let g:rainbow_active = 1 "enable rainbow

" Plugin-Config colorscheme
" grey comment
colorscheme space-vim-dark
hi Comment guifg=#5C6370 ctermfg=59
" gui or terminal with true colors enable
" for example : ubuntu terminal
color space-vim-dark
set termguicolors
hi LineNr ctermbg=NONE guibg=NONE

" Plugin-Config auto-pairs
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"'}


" Plugin-Config tag
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }



"tree visual
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nnoremap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


"show buffer tabs and MiniBufExploer
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
nnoremap <Leader>bn :MBEbn<cr>
nnoremap <Leader>bp :MBEbp<cr>





