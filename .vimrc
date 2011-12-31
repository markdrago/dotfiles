set nocompatible    "do not try and be compatible with old vi

""interface
set nowrap          "do not wrap lines
set number          "line numbers
set background=dark "use lighter colored fonts
set title           "put info in terminal title
set showcmd         "bits of useful info in bot/right corner

""searching
set incsearch       "incremental search
set ignorecase      "ignore case when searching
set smartcase       "match case if pattern contains A-Z

""whitespace
set tabstop=4       "4-space tabs
set shiftwidth=4    "4-space tabs
set expandtab       "indent with spaces
filetype indent on  "auto indent based on file type
set autoindent      "keep indentation level from previous line

""syntax highlighting
let python_highlight_all=1
syntax on

""files
set encoding=utf-8
set wildignore=*.swp,*.pyc,*.class

