# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export ZSH="/usr/share/oh-my-zsh"

ZSH_THEME="minimal"

# Active les plugins utiles
plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)

# Charge Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Affiche une invite d'alerte en cas d'erreur d'une commande
setopt NO_BG_NICE
setopt HIST_IGNORE_DUPS
setopt SHARE_HISTORY

# Active l'autocompletion case-insensitive (insensible à la casse)
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Active l'affichage des couleurs dans la console
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
