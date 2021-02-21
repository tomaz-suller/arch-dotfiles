# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/tomaz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
###############################################################################################

# Start X at login (from Arch Wiki)
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then 
	exec ssh-agent startx
fi

# Custom aliases

## Git
alias gs="git status"
alias gf="git fetch"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gch="git checkout"

## Backup
alias config='/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME'


## Color
alias grep="grep --color=always"
alias ll="ls -al --color"

alias feh="feh -g 960x540 --scale-down"
alias pacman="sudo pacman"
alias spt="spotifyd && spt"

# Qt Applicatios theme
export QT_STYLE_OVERRIDE="Breeze-Dark"

# Start PowerLine
powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

# Zsh Extensions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#586e75,bg=#073642"

