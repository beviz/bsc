set nocompatible              " be iMproved, required
set encoding=utf-8
filetype off                  " required

syntax on
set number
set cursorline
set ruler
set shiftwidth=2
set softtabstop=2
set ignorecase smartcase
set incsearch
set hlsearch
set smartindent
set backspace=indent,eol,start
set laststatus=2
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ 
" set foldenable
" set foldmethod=syntax
" set foldcolumn=0
" setlocal foldlevel=1

if filereadable(glob("~/.vim/bundle/vim-monokai/LICENSE"))
  " color schema
  colorscheme monokai
endif
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

