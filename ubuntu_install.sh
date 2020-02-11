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

# zinit (zsh plugin manager)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# tmux 
sudo apt install tmux

#vim 
sudo apt isntall vim

#lazygit
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get lazygit

# golang (ver 1.13)
wget https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz
sudo tar -xvf go1.13.3.linux-amd64.tar.gz
sudo mv go /usr/local

# python (pip)
sudo apt install python3-pip

# javascript (react)
sudo apt install nodejs
sudo apt install npm
sudo npm install -g create-react-app

chmod +x symboliklink.sh
