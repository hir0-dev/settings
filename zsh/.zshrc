#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

## ENV
export LANG=ja_JP.UTF-8
export EDITOR=vim
export GIT_EDITOR=vim
export DOCKER_CONTENT_TRUST=1

## Alias
alias open='wsl-open'
alias dcu="docker-compose up -d --build"
alias dcd="docker-compose down"
alias dcl="docker-compose logs -ft"
alias dcls="docker container ls -a"
alias dils="docker image ls -a"

## Overwrite Key Binding
function __zsh_clear() {
    zle kill-whole-line
    zle -U clear$'\n'
}
zle -N __zsh_clear
bindkey '^L' __zsh_clear
