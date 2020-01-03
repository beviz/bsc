#!/bin/bash

BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

if [ "$DEV" = true ]; then
  DEV=true
else
  DEV=false
fi

if [ "$FORCE" = true ]; then
  FORCE=true
else
  FORCE=false
fi

ln_confirm() {
  if [[ -e $2 && "$FORCE" = false ]]; then
    read -p "$2 exists, overwrite? (Y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
      echo "skipped: $2"
      return 1
    fi
  fi

  rm -rf $2
  ln -s $BASEDIR/$1 $2
  echo "added: $2"
}

# tmux
ln_confirm oh-my-tmux/tmux.conf ~/.tmux.conf
ln_confirm oh-my-tmux/tmux.conf.local ~/.tmux.conf.local

# SpaceVim
curl -sLf https://spacevim.org/install.sh | bash
ln_confirm SpaceVim.d ~/.SpaceVim.d


