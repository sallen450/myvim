#!/bin/bash

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.bak
fi

mv .vimrc ~/.vimrc
