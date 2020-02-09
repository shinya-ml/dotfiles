#!/bin/sh
# config fileのシンボリックリンクを張る

for file in .zshrc .vimrc .tmux.conf .netrc;
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
