
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
        print -P "%F{160}▓▒░ The clone has failed.%f"
fi
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit installer's chunk
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure
zinit light chrissicool/zsh-256color

zinit ice from"gh-r" as"program"
zinit load junegunn/fzf-bin

# alias
alias ls='ls -G'
alias vi='vim'
alias lg='lazygit'
alias py='python3'
alias skim='open -ga /Applications/Skim.app'
set -o vi

export GOROOT=/usr/local/go
export GOPATH=$HOME/Projects
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH=/usr/local/texlive/2019/bin/x86_64-darwin:$PATH

