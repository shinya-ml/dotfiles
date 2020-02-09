#!/bin/sh
# ubuntu setup時に必要なものをinstall

# curl
sudo apt install curl

# git
sudo apt install git
git config --global user.name="shinya-ml"
git config --global user.email="epsonia_ss08@icloud.com"

# zsh
sudo apt intall zsh
chsh -s $(which zsh)

# zinit (zsh plugin manager)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# tmux 
sudo apt install tmux

#vim 
sudo apt isntall vim

# golang (ver 1.13)
wget https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz
sudo tar -xvf go1.13.3.linux-amd64.tar.gz
sudo mv go /usr/local

chmod +x symboliklink.sh
