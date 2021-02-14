#!/bin/bash

cd $(dirname $0)

for i in $(ls -a dotfiles | grep -v "\.$"); do
    rm -Rf ~/$i
done

for i in $(ls -a dotfiles | grep -v "\.$"); do
    ln -s $(pwd)/dotfiles/$i ~
done

cd - > /dev/null
