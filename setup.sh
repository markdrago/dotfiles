#!/bin/sh

for f in `ls -A | grep '^\.' | grep -v '.git' | grep -v README`; do
    ln -sf .dotfiles/$f ~
done

#install vundle for vim
if [ ! -d $HOME/.vim/bundle/vundle ]; then
    mkdir -p $HOME/.vim/bundle
    git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
    vim +BundleInstall +q +q
fi
