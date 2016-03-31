#!/bin/bash

# .vimrc
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.bak
fi

cp .vimrc ~/.vimrc

# .vim
if [ -d ~/.vim ]; then
	mv ~/.vim ~/.vim_back
fi

mkdir ~/.vim
