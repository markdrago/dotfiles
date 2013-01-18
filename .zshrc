# Path to the oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Name of oh-my-zsh theme to load
ZSH_THEME="norm"

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
alias mkbl='hg branchlifetimes -b "^mk"'
alias mkms='hg mergesizes -b "^mk"'
alias mkcr='crstats -o -u upadhye -u tma -u mdrago -u mturkel -u shusong'
alias mkdb='wt && hgl && echo; echo "Active Branches"; mkbl && echo; echo "Recent Merges"; mkms && echo; echo "Code Reviews"; mkcr'
alias hgpn='hg push --new-branch'
alias hglu='hg pull && hg update '

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
