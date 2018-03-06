#!/bin/bash

echo "Installing official packages:"
sudo pacman -Syu --needed - < official-packages.txt

echo "Installing from AUR:"

mkdir tmp
cd tmp

for PACKAGE in `cat ../aur-packages.txt`
do
    echo "Installing $PACKAGE"
    git clone https://aur.archlinux.org/$PACKAGE.git
    cd $PACKAGE
    makepkg -si
    cd ..
done

cd ..

echo "Copying configuration files"
exec ./update-configs.sh

echo "Installing spf13-vim"
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
