#!/bin/bash

echo "Copying i3 config"
mkdir -p ~/.config/i3
cp ./config/i3.conf ~/.config/i3/config

echo "Copying Polybar config"
mkdir -p ~/.config/polybar
cp ./config/polybar/* ~/.config/polybar/

echo "Copying LXTerminal config"
mkdir -p ~/.config/lxterminal
cp ./config/lxterminal.conf ~/.config/lxterminal/lxterminal.conf

echo "Copying bashrc"
cp ./config/bashrc ~/.bashrc

echo "Copying gtk-3.0 settings"
mkdir -p ~/.config/gtk-3.0
cp ./config/gtk-3.0-settings.ini ~/.config/gtk-3.0/settings.ini

echo "Copying gtk-2.0 settings"
cp ./config/gtkrc-2.0 ~/.gtkrc-2.0

echo "Copying Xresources"
cp ./config/Xresources ~/.Xresources

echo "Copying LightDM config"
sudo mkdir -p /etc/lightdm
sudo cp ./config/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf

echo "Copying wallpapers"
mkdir -p ~/.config/wallpaper
cp ./wallpaper/* ~/.config/wallpaper/

echo "Copying wallpapers to /usr/share/wallpaper/"
sudo mkdir -p /usr/share/wallpaper
sudo cp ./wallpaper/* /usr/share/wallpaper
sudo chmod -R 755 /usr/share/wallpaper
