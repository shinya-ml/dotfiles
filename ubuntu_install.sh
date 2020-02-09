#!/bin/sh
# ubuntu setup時に必要なものをinstall

# curl
sudo apt install curl

# git
sudo apt install git

# zsh
sudo apt intall zsh
chsh -s $(which zsh)

# zinit (zsh plugin manager)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

