#!/bin/sh

# xcodeをapp storeからインストールしておく
#xcode-select --install
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

#fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
.fzf/install

#bat
brew install bat

#exa
brew install exa

#pyenv
brew install pyenv


#javascript
#brew install nodejs
#brew install npm
#npm install -g create-react-app

#golang 1.13.3
#curl -o golang.pkg https://dl.google.com/go/go1.13.3.darwin-amd64.pkg
#sudo open golang.pkg


#chrome
brew cask install google-chrome

#slack
brew cask install slack

#skim
brew cask install skim

#libreoffice
brew cask install libreoffice-language-pack --language=ja

#cyber duck
brew cask install cyberduck

#alfred
brew cask install alfred

# vs-code
brew cask install visual-studio-code

# google-drive
brew cask install google-backup-and-sync

# hyper-switch (ウィンドウ単位の切り替え)
brew cask install hyperswitch

# spectacle
brew cask install spectacle

# shiftlt
brew cask install shiftlt

# dropbox
brew cask install dropbox

# scroll-reverser
brew cask install scroll-reverser

# docker (docker-compose)
brew cask install docker

# microsoft teams
brew cask install microsoft-teams

#mactex (重いので一番最後)
brew cask install mactex-no-gui

# /zshrcのリロード
source .zshrc

