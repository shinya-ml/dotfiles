#!/bin/sh
# config fileのシンボリックリンクを張る

for file in .zshrc .vimrc;
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
