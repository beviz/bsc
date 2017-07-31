ln -s ~/.bsc/vimrc ~/.vimrc
ln -s ~/.bsc/vim ~/.vim
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
vim +PluginInstall +qall
if [ -d ~/.vim/bundle/command-t ]; then
  cd ~/.vim/bundle/command-t && rake make
fi

