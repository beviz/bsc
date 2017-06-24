source ~/.vim/plugins.vim
source ~/.vim/basic.vim
source ~/.vim/aliases.vim

if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif
