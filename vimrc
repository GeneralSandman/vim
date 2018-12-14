"reload vimrc if vimrc have been changed
autocmd BufWritePost $MYVIMRC source $MYVIMRC

"leader char
let mapleader=";"

"detect file type and use plugin in cording of file type 
filetype on
filetype plugin on

set number

set encoding=utf-8

set t_Co=256

set scrolloff=10

filetype plugin indent on

"config of tab
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set smartindent

set noswapfile

"currtent line and column
set cursorline
set cursorcolumn


set cmdheight=2

set showmatch

set showcmd

set autochdir

"helight the result of search
set hlsearch

set incsearch

set ignorecase

set nocompatible

set wildmenu

set autowrite

set nowrap

syntax enable
syntax on
"set background=dark
"colorscheme solarized

"go down and up faster
nmap J 5j
nmap K 5k

"jump to begin and end of line
nmap <Leader>LB 0
nmap <leader>LE $

nnoremap <Leader>bg <C-Z>

"skip between splited windows
nnoremap <Leader>nw <C-W><C-W>
nnoremap <Leader><Leader>lw <C-W>l
nnoremap <Leader><Leader>hw <C-W>h
nnoremap <Leader><Leader>jw <C-W>j
nnoremap <Leader><Leader>kw <C-W>k

"
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>Q :q!<CR>

"modify size of windows
nmap <Leader>- :vertical resize -7<CR>
nmap <Leader>= :vertical resize +7<CR>
nmap <Leader><Leader>- :resize -5<CR>
nmap <Leader><Leader>= :resize +5<CR>

"jump between matched char {} [] ()
nnoremap <Leader>M %

" delete gui controler
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

"delete current word
nmap <silent> <Leader><Leader>dw daw
"copy current word
nmap <silent> <Leader><Leader>yw ebvey
"insert a empty line and exit insert model
nmap <silent> <Leader>o o<ESC>


" vundle 环境设置
filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call plug#begin('~/.vim/plugged')
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
"Plug 'fatih/vim-go' "Go Language
Plug 'VundleVim/Vundle.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'vim-scripts/phd'
Plug 'jiangmiao/auto-pairs'
Plug 'Lokaltog/vim-powerline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'derekwyatt/vim-fswitch'
Plug 'kshenoy/vim-signature'
Plug 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'
Plug 'vim-scripts/indexer.tar.gz'
Plug 'vim-scripts/DfrankUtil'
Plug 'vim-scripts/vimprj'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/DrawIt'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'derekwyatt/vim-protodef'
Plug 'scrooloose/nerdtree'
Plug 'fholgado/minibufexpl.vim'
Plug 'gcmt/wildfire.vim'
Plug 'sjl/gundo.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'suan/vim-instant-markdown'
Plug 'mhinz/vim-signify' "git
Plug 'vim-scripts/a.vim' "switch between header file and source file
Plug 'vim-scripts/AutoTag' "update tags file when close file
Plug 'luochen1990/rainbow' "rainbow parentheses
Plug 'Chiel92/vim-autoformat'
Plug 'liuchengxu/space-vim-dark' "color scheme
"Plugin 'lilydjwg/fcitx.vim'
" 插件列表结束
call plug#end()



"========Plugin-Config ''========


"========Plugin-Config ''========
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=["mysnippets"]
let g:UltiSnipsExpandTrigger="<Leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"========Plugin-Config 'autoformat'========
noremap <Leader>form :Autoformat<CR>
let g:autoformat_verbosemode=1



"========Plugin-Config 'YouCompleteMe'========
"ycm config file
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" support c++11
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'


"========Plugin-Config 'indent'========
"zM close fold all block
"zR fold all block


"========Plugin-Config 'vim-indent-guides'========
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


"========Plugin-Config 'PowerLine'========
set laststatus=2
let g:Powerline_symbols = 'fancy'
let g:neocomplcache_enable_at_startup = 1
let g:Powerline_colorscheme='solarized256'


"========Plugin-Config 'w0rp/ale'========
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1
let g:ale_lint_on_enter = 0 "disable ale when we open a new file
let g:ale_list_window_size = 5 "height of error windows

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = 'xx'
let g:ale_sign_warning = '--'
let g:ale_list_windows_size = 5
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>

"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
\   'cpp': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\   'go': ['golint'],
\   'bash': ['shellcheck'],
\}


"========Plugin-Config 'vim-gutentags'========
" enable gtags module
let g:gutentags_modules = ['ctags', 'gtags_cscope']
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" forbid gutentags adding gtags databases
let g:gutentags_atuo_add_gtags_cscope = 0

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif


"========Plugin-Config 'ctrlsf' find content in project========
let g:ctrlsf_ackprg = 'ack'
let g:ctrlsf_open_left = 0
nnoremap <Leader>fp :CtrlSF<CR>


"========Plugin-Config 'rainbow'========
let g:rainbow_active = 1 "enable rainbow


"========Plugin-Config '' man help========
source $VIMRUNTIME/ftplugin/man.vim
nmap <Leader>man :Man 3 <cword><CR>


"========Plugin-Config 'colorscheme'========
" grey comment
colorscheme space-vim-dark
hi Comment guifg=#5C6370 ctermfg=59
" gui or terminal with true colors enable
" for example : ubuntu terminal
color space-vim-dark
set termguicolors " comment this line if pure character mode
" comment this line if pure character mode
hi LineNr ctermbg=NONE guibg=NONE 


"========Plugin-Config 'auto-pairs'========
let g:AutoPairs = {'(':')', '[':']', '{':'}', "'":"'", '"':'"'}


"========Plugin-Config 'tagbar'========
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
nnoremap <Leader>ilt :TagbarToggle<CR> 
" 设置标签子窗口的宽度 
let tagbar_width=16 
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


"========Plugin-Config 'NERDTree'========
"tree visual
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nnoremap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=16
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


"========Plugin-Config 'MiniBufExploer'========
"show buffer tabs and MiniBufExploer
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
nnoremap <Leader>bn :MBEbn<cr>
nnoremap <Leader>bp :MBEbp<cr>

