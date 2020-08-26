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

## Overwrite Key Binding
function __zsh_clear() {
    zle kill-whole-line
    zle -U clear$'\n'
}
zle -N __zsh_clear
bindkey '^L' __zsh_clear