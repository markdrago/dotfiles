# Path to the oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Name of oh-my-zsh theme to load
ZSH_THEME="cloud"
ZSH_THEME_CLOUD_PREFIX='♥'

# List of oh-my-zsh plugins to load
plugins=(git mercurial)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Editor customization
EDITOR=vim
VISUAL=$EDITOR
GIT_EDITOR=$EDITOR

# Aliases
alias gs=gst
alias gd='g diff'

# Add directories to PATH if the directories exist
newpaths="$HOME/Packages/javancss/bin"
for newpath in $newpaths; do
    if [ -d $newpath ]; then
        PATH="$PATH:$newpath"
    fi
done
export PATH
