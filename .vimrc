set nocompatible    "do not try and be compatible with old vi

""vundle
"pre-vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
""bundles in use
Bundle 'altercation/vim-colors-solarized'
Bundle 'Python-Syntax'
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'git://git.wincent.com/command-t.git'
colorscheme solarized
let g:solarized_termcolors=256
"post-vundle
filetype plugin indent on

""interface
set nowrap          "do not wrap lines
set number          "line numbers
set background=dark "use lighter colored fonts
set title           "put info in terminal title
set showcmd         "bits of useful info in bot/right corner
set showmode        "indicates input or replace mode at bottom
set cursorline      "highlight current line
set ruler           "show line & column number of cursor
set history=1000    "remember history of : commands
"set undofile        "remember undo history across vim restarts
set autoread        "reload a file if it is changed outside of vim
set complete=.,w,b,u,t,i "places to scan when doing completion

""gui-specific interface settings
if has('gui_running')
  set guifont=Inconsolata\ Medium\ 10
endif

""typing
set backspace=indent,eol,start "backspace always works

""keys
"disable arrow keys to force use of hjkl
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

""searching
set incsearch       "incremental search
set ignorecase      "ignore case when searching
set smartcase       "match case if pattern contains A-Z
set hlsearch        "highlight results of a previous search

""command-t
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/build/*,*/.settings/*,*/bin/*,*/testResults/*

""whitespace
set tabstop=4       "4-space tabs
set shiftwidth=4    "4-space tabs
set expandtab       "indent with spaces
set autoindent      "keep indentation level from previous line

""ctags et al
set tags=~/.tags    "location of ctags file

""syntax highlighting
syntax on
let python_highlight_all=1
let java_highlight_all=1
let java_highlight_functions="style"  "highlight based on case of functions
let java_allow_cpp_keywords=1         "do not highlight c++ keywords

""files
set encoding=utf-8
set wildignore=*.swp,*.pyc,*.class

