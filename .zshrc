# Path to your oh-my-zsh installation.
export ZSH=/Users/adri/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

source $HOME/.env.sh
