" use pathogen for more convenient plugin directory layout
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible                          " disable vi compatibility (fixes tab completion of file names on windows)

" appearance
colorscheme inkpot
syntax on                                 " enable syntax highlighting
set number                                " show line numbers

" indentation
set autoindent
set smartindent
filetype plugin indent on                 " load file type plugins + indentation

" indent with spaces, not tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" searching
set hlsearch                              " highlight search matches
set incsearch                             " incremental search
set ignorecase                            " case insensetive searches ...
set smartcase                             " ... unless there is at least one capital letter


" Hide/unhide prefix with long file names
" :call ConcealPath()
au BufReadPost quickfix :call ConcealPath()

function ConcealPath()
       syntax match ConcealedPath /\v^\/[^|]*\// conceal cchar=&
       setlocal conceallevel=2
       setlocal concealcursor=nvic
       setlocal nowrap
endfunction

function UnconcealPath()
       setlocal conceallevel=0
       setlocal wrap
endfunction

" indentation in python
" make
" cscope
" autocomplete
" highlight
" location of backup files
" plugins to check out
" - nerdcommenter
" - the nerd tree
