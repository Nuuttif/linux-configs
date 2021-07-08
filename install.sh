#!/bin/sh

pacman -S xorg xorg-server xorg-xinit i3-gaps imagemagick nitrogen firefox alacritty picom
mv config ..
mv fi ..
mv .xinitrc ..
mv .zshrc ..
mv w ..
mv picom.conf ..

cd ..
mv fi /usr/share/X11/xkb/symbols

mkdir Wallpapers
mkdir .config
mkdir .config/i3
mv config .config/i3

mkdir .config/picom
mv picom.conf .config/picom

git clone https://github.com/dylanaraps/wal
mv wal/wal /usr/local/bin
rm -r wal

chmod +x w
mv w /usr/local/bin

exit
