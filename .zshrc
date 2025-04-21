# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/usr/share/oh-my-zsh"

ZSH_THEME="minimal"

plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

setopt NO_BG_NICE
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

autoload -U colors && colors

alias ls='ls --color=auto -lah'
alias usys='sudo pacman -Syu'
alias cls='clear'
alias ..='cd ..'
alias ...='cd ../..'

# Historique propre et complet
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

neofetch
alias dotfiles=/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME
