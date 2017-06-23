ln -s ~/.bsc/vimrc ~/.vimrc
ln -s ~/.bsc/vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd ~/.vim/bundle/command-t && rake make
