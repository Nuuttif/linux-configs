#!/bin/sh

pacman -S xorg xorg-server xorg-xinit i3-gaps imagemagick nitrogen firefox alacritty feh pcmanfm alsa-utils asoundconf rofi i3status-rust

chmod ugo+rw .config
chmod ugo+rw Wallpapers
chmod +x w

cp -r .config .. 
cp -r Wallpapers .. 
cp -r ubuntu /usr/share/fonts

cp fi /usr/share/X11/xkb/symbols
cp .xinitrc .. 
cp .zshrc .. 

mv w /usr/local/bin

git clone https://github.com/dylanaraps/wal
mv wal/wal /usr/local/bin
rm -r wal

exit
