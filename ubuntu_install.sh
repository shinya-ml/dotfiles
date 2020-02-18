#!/bin/sh
# ubuntu setup時に必要なものをinstall
sudo apt update
sudo apt upgrade

# curl
sudo apt install curl

# git
sudo apt install git

# zsh
sudo apt install zsh
chsh -s $(which zsh)


# tmux 
sudo apt install tmux

#vim 
sudo apt isntall vim

#vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
.fzf/install
#bat
curl -LJO https://github.com/sharkdp/bat/releases/download/v0.9.0/bat_0.9.0_amd64.deb
sudo dpkg -i bat_0.9.0_amd64.deb

#lazygit
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get lazygit

# golang (ver 1.13)
wget https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz
sudo tar -xvf go1.13.3.linux-amd64.tar.gz
sudo mv go /usr/local


# javascript (react)
sudo apt install nodejs
sudo apt install npm
sudo npm install -g create-react-app

chmod +x symboliklink.sh
