#!/bin/sh

for f in `ls -A | grep '^\.' | grep -v '.git' | grep -v README`; do
    ln -sf .dotfiles/$f ~
done

