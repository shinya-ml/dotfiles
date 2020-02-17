#!/bin/sh

# xcodeをapp storeからインストールしておく
xcode-select -install
#homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#zsh
brew install zsh
chsh -s $(which zsh)


#vim 
brew install vim

#vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#lazygit
brew install lazygit

#python (pyenvでバージョン管理)
brew install pyenv

# miniconda install
pyenv install miniconda3-latest
pyenv global miniconda3-latest
#TODO: 必要なmoduleのinstall

#javascript
brew install nodejs
brew install npm
npm install -g create-react-app

#golang 1.13.3
curl -o golang.pkg https://dl.google.com/go/go1.13.3.darwin-amd64.pkg
sudo open golang.pkg
