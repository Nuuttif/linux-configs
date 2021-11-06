#!/bin/sh

pacman -S xorg xorg-server xorg-xinit i3-gaps imagemagick nitrogen firefox alacritty feh pcmanfm alsa-utils asoundconf rofi i3status-rust

cp -r i3 ..
cp -r alacritty ..
cp -r picom ..
cp -r rofi ..
cp -r Wallpapers ..
cp -r i3status-rust ..

cp -r ubuntu /usr/share/fonts

mv fi /usr/share/X11/xkb/symbols
mv .xinitrc ..
mv .zshrc ..
mv w ..

cd ..

mkdir .config
cp -r i3 .config
cp -r picom .config
cp -r alacritty .config
cp -r rofi .config
cp -r i3status-rust .config

git clone https://github.com/dylanaraps/wal
mv wal/wal /usr/local/bin
rm -r wal

chmod +x w
mv w /usr/local/bin

chmod ugo+rwx Wallpapers
chmod ugo+rwx .config

rm -r i3 alacritty picom rofi

exit
