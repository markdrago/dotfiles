#!/bin/sh

for f in `ls -A | grep '^\.' | grep -v '.git'`; do
    ln -sf .dotfiles/$f ~
done

