#!/bin/bash

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

if [ "$DEV" = true ]; then
  DEV=true
else
  DEV=false
fi

ln_confirm() {
  if [ -e $2 ]; then
    read -p "$2 exists, overwrite? (Y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      rm -rf $2
    else
      echo "skipped: $2"
      return 1
    fi
  fi

  ln -s $BASEDIR/$1 $2
  echo "added: $2"
}

# vim
ln_confirm vimrc ~/.vimrc
# ln -s $BASEDIR/vimrc ~/.vimrc
ln_confirm vim ~/.vim
# ln -s $BASEDIR/vim ~/.vim

if [ "$DEV" = true ]; then
  if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi
  vim +PluginInstall +qall
  if [ -d ~/.vim/bundle/command-t ]; then
    cd ~/.vim/bundle/command-t && rake make
  fi
fi

# tmux
ln_confirm tmux.conf ~/.tmux.conf
