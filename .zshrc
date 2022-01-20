
# ### Added by Zinit's installer
# if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
#     print -P "%F{33}▓▒░ %F{220}Installing DHARMA Initiative Plugin Manager (zdharma/zinit)…%f"
#     command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
#     command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
#         print -P "%F{33}▓▒░ %F{34}Installation successful.%f" || \
#         print -P "%F{160}▓▒░ The clone has failed.%f"
# fi
# source "$HOME/.zinit/bin/zinit.zsh"
# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit
# ### End of Zinit installer's chunk
# zinit light zsh-users/zsh-autosuggestions
# zinit light zdharma/fast-syntax-highlighting
#
# zinit ice pick"async.zsh" src"pure.zsh"
# zinit light sindresorhus/pure
# zinit light chrissicool/zsh-256color
#
# zinit ice from"gh-r" as"program"
# zinit load junegunn/fzf-bin
eval "$(starship init zsh)"

# alias
alias ls='exa -Tla --level=1'
alias vi='vim'
alias vim='vi'
alias lg='lazygit'
alias g='git branch; git status'
alias cg='cd ~/ghq'
alias py='python3'
alias skim='open -ga /Applications/Skim.app'
alias c='bat'
alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"
alias r='ranger'
alias newslide='cp ~/dotfiles/template/slide_tex.txt slide.tex && touch ./ref.bib'
alias newpaper='cp ~/dotfiles/template/paper_tex.txt paper.tex && touch ./ref.bib'
alias mm='vi ~/Library/Mobile\ Documents/com~apple~CloudDocs/memo/memo.md'
alias avt='aws-vault exec fluct_ssp'
set -o vi

export GOROOT=/usr/local/go
export GOPATH=$HOME/.goenv
export GOBIN="$GOPATH/bin"
export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
export PATH=$HOME/.goenv/bin:$PATH
eval "$(goenv init -)"
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
export PATH=/usr/local/texlive/2019/bin/x86_64-darwin:$PATH
export PATH=$HOME/.nodebrew/current/bin:$PATH

export SP_TWITTER_SECRET=GeTlQtGAvIwzbk29DfxXtwtGydkXloBOFhmLLdPgFitn8X0UnI
export SP_TWITTER_KEY=8AtB4O2omCfAyQNLIZqOZ8C1p
export SP_TWITTER_ACCESSTOKEN=1134346107666878465-wsUkjGHRzuvuAbwekaI9G4bQG6wlFW
export SP_TWITTER_ACCESSSECRET=sA3WG81ZgplvvEJ7GuP4dOfglxoaRWLYebhcKOcwFk2hjj


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_OPTS='--preview "bat  --color=always --style=header,grid --line-range :150 {}"'
export PYENV_ROOT=/usr/local/var/pyenv
export PATH=$PYENV_ROOT/bin:$PATH
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

function ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/local/bin/ranger $@
    else
        exit
    fi
}

eval "$(gh completion -s zsh)"

function frepo(){
    local dir
    dir=$(ghq list > /dev/null | fzf) &&
        cd $(ghq root)/$dir
    zle reset-prompt
}
zle -N frepo
bindkey '^g' frepo
export PATH="/opt/homebrew/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shi-suzuki/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shi-suzuki/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shi-suzuki/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shi-suzuki/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/libpq/bin:$PATH"
