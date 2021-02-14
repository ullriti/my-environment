#!/bin/bash
for i in $(ls -a dotfiles); do
    unlink ~/$i
done

for i in $(ls -a dotfiles); do
    ln -s $(pwd)/dotfiles/$i ~
done
