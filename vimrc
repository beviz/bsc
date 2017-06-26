source ~/.vim/plugins.vim
source ~/.vim/basic.vim
source ~/.vim/aliases.vim

if filereadable(glob("~/.vimrc.local"))
  " source plugins.dev.vim in development env
  source ~/.vimrc.local
endif
