#!/bin/sh

pacman -S xorg xorg-server xorg-xinit i3-gaps imagemagick nitrogen firefox alacritty feh pcmanfm alsa-utils asoundconf rofi
mv config ..
mv fi /usr/share/X11/xkb/symbols
mv .xinitrc ..
mv .zshrc ..
mv w ..
mv picom.conf ..
mv alacritty.yml ..
mv config.rasi ..

cp -r ubuntu /usr/share/fonts

cd ..

mkdir Wallpapers
mkdir .config
mkdir .config/i3
mv config .config/i3

mkdir .config/picom
mv picom.conf .config/picom

mkdir .config/alacritty
mv alacritty.yml .config/alacritty

mkdir .config/rofi
mv config.rasi .config/rofi

git clone https://github.com/dylanaraps/wal
mv wal/wal /usr/local/bin
rm -r wal

chmod +x w
mv w /usr/local/bin

chmod ugo+rwx Wallpapers
chmod ugo+rwx .config

exit
