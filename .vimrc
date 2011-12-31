set nocompatible    "do not try and be compatible with old vi

""vundle
"pre-vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
""bundles in use
Bundle 'altercation/vim-colors-solarized'
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
set mouse=a         "allow use of mouse in all modes

""searching
set incsearch       "incremental search
set ignorecase      "ignore case when searching
set smartcase       "match case if pattern contains A-Z

""whitespace
set tabstop=4       "4-space tabs
set shiftwidth=4    "4-space tabs
set expandtab       "indent with spaces
set autoindent      "keep indentation level from previous line

""syntax highlighting
syntax on
let python_highlight_all=1

""files
set encoding=utf-8
set wildignore=*.swp,*.pyc,*.class

