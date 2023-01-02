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
HISTSIZE=10000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
###############################################################################################

# Configure history file
HISTSIZE=2000
SAVEHIST=10000
HISTFILE="$HOME/.histfile"
## Ignore duplicate commands
setopt HIST_IGNORE_ALL_DUPS
## Write commands to $HISTFILE as soon as they are executed
setopt INC_APPEND_HISTORY

export PATH="$PATH":"$HOME"/.local/bin
export VISUAL='vim'

# Custom aliases

## Git
alias gs="git status"
alias gf="git fetch"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gch="git checkout"

## tmux
alias tmuxk="tmux kill-server"

## Dotfile Backup
alias config='/usr/bin/git --git-dir=$HOME/dotfiles.git/ --work-tree=$HOME'


## Color
alias grep="grep --color=always"
alias ls="ls --color"
alias ll="ls -alh --color"
alias tree="tree -C"
alias pacman="sudo pacman --color always"

## Misc
alias feh="feh -g 960x540 --scale-down"
alias venv="python -m venv"

# Qt Applicatios theme
export QT_STYLE_OVERRIDE="Breeze-Dark"

# Start PowerLine
powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

# Zsh Extensions
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#586e75,bg=#073642"

# Set bat as the default system pager
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Intel Quartus Prime environment variables
export QSYS_ROOTDIR="/usr/local/src/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/21.1/quartus/sopc_builder/bin"
export LM_LICENSE_FILE="/home/tomaz/Quartus/LR-068848_License.dat"

