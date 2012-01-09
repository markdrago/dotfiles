# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="mdrago"
ZSH_THEME="cloud"
ZSH_THEME_CLOUD_PREFIX='⬤'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

EDITOR=vim
VISUAL=$EDITOR
GIT_EDITOR=$EDITOR

#add directories to PATH if the directories exist
newpaths="$HOME/Packages/javancss/bin"
for newpath in $newpaths; do
    if [ -d $newpath ]; then
        export PATH="$PATH:$newpath"
    fi
done
