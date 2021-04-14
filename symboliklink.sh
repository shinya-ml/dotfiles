#!/bin/sh
# config fileのシンボリックリンクを張る

for file in .zshrc .vimrc .latexmkrc;
do
    ln -s $HOME/ghq/dotfiles/$file $HOME/$file
done

