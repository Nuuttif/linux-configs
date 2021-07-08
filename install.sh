#!/bin/sh

pacman -S xorg xorg-server xorg-xinit i3-gaps imagemagick nitrogen
mv config ..
mv fi ..
mv .xinitrc ..
mv .zshrc ..
mv w ..

cd
mv fi /usr/share/X11/xkb/symbols

mkdir .config
mkdir .config/i3
mv config .config/i3

git clone https://github.com/dylanaraps/wal
mv wal/wal /usr/local/bin
rm -r wal

mv w /usr/local/bin

exit
