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
alias rake='noglob rake' #do not let globbing break rake commands
alias mkbr='hg branches -a | grep "^mk"'
alias hgpn='hg push --new-branch'

# Add directories to PATH if the directories exist
newpaths="$HOME/Packages/javancss/bin
$HOME/.rvm/bin
/workspace/env
/workspace/bin
/workspace/tools"
for newpath in "${(f)newpaths}"; do
    if [[ -d $newpath ]]; then
        PATH="$PATH:$newpath"
    fi
done
export PATH

# Source files if they exist
source_files="$HOME/.rvm/scripts/rvm
$HOME/.yodle-dev-shell-utils/conf/sh/all"
for source_file in "${(f)source_files}"; do
    if [[ -e $source_file ]]; then
        source $source_file
    fi
done
