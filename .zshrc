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
alias gpnb='git push --set-upstream origin $(current_branch)'
alias rake='noglob rake' #do not let globbing break rake commands

alias mkbr='hg branches -a | grep "^mk"'
alias mkbl='hg branchlifetimes -b "^mk"'
alias mkms='hg mergesizes -b "^mk" -l 5'
alias mkcr='crstats -o -u upadhye -u tma -u mdrago -u mturkel -u shusong'
alias mkdb='wt && hgl && echo; echo "Meddlers"; echo "Active Branches"; mkbl && echo; echo "Recent Merges"; mkms && echo; echo "Code Reviews"; mkcr'

alias psbr='hg branches -a | egrep "^tps"'
alias psbl='hg branchlifetimes -b "^tps"'
alias psms='hg mergesizes -b "^tps" -l 5'
alias pscr='crstats -o -u njunankar -u dhiggins -u hghazzi'
alias psdb='wt && hgl && echo; echo "Stingrays"; echo "Active Branches"; psbl && echo; echo "Recent Merges"; psms && echo; echo "Code Reviews"; pscr'

alias hgpn='hg push --new-branch'
alias hglu='hg pull && hg update '
alias hgld='hg pull && hg update default'

alias fix_dev_hosts='sudo cp /etc/hosts.d/custom /etc/hosts && hostfile_switch -d nyc-dev | grep -vi localhost | sudo tee -a /etc/hosts'

# Add directories to PATH if the directories exist
newpaths="$HOME/bin
$HOME/Packages/javancss/bin
$HOME/.rvm/bin
$HOME/.gem/ruby/2.0.0/bin
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
$HOME/.yodle-dev-shell-utils/conf/sh/all
/etc/profile.d/vte.sh"
for source_file in "${(f)source_files}"; do
    if [[ -e $source_file ]]; then
        source $source_file
    fi
done

# Make CapsLock be a Control
setxkbmap -option ctrl:nocaps
