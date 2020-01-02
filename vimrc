set shell=/bin/bash

source ~/.vim/plugins.vim
" if filereadable(glob("~/.vim/plugins.dev.vim"))
"   source ~/.vim/plugins.dev.vim
" endif

source ~/.vim/basic.vim
" source ~/.vim/shortcuts.vim
source ~/.vim/aliases.vim

if filereadable(glob("~/.vimrc.local"))
  " source plugins.dev.vim in development env
  source ~/.vimrc.local
endif

