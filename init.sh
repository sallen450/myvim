#!/bin/bash

# .vim
if [ -d ~/.vim ]; then
	mv ~/.vim ~/.vim.orig
fi

mkdir ~/.vim

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# .vimrc
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.orig
fi

cp .vimrc ~/.vimrc

# install vim plugins
vim +PluginInstall +qall

# compile YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer

# delete the repo when install finished
cd ..

if [ -d ./myvim ]; then
	rm -rf ./myvim
fi
