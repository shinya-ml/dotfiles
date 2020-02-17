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

#lazygit
sudo add-apt-repository ppa:lazygit-team/release
sudo apt-get lazygit

# golang (ver 1.13)
wget https://dl.google.com/go/go1.13.3.linux-amd64.tar.gz
sudo tar -xvf go1.13.3.linux-amd64.tar.gz
sudo mv go /usr/local

# python (pip)
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
#TODO:必要なmoduleのinstal

# javascript (react)
sudo apt install nodejs
sudo apt install npm
sudo npm install -g create-react-app

chmod +x symboliklink.sh
