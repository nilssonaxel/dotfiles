#!/bin/bash

mkdir tmp
cd tmp

for PACKAGE in `cat ../aur-packages.txt` 
do
	echo Installing $PACKAGE
	git clone https://aur.archlinux.org/$PACKAGE.git
	cd $PACKAGE
	makepkg -si
	cd ..
done

cd ..

echo Cleaning up
rm -rf tmp
