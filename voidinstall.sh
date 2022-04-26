#!/bin/sh

xbps-install xorg xinit i3-gaps ImageMagick nitrogen firefox alacritty alsa-utils rofi i3status-rust zsh zsh-autosuggestions zsh-completions zsh-history-substring-search zsh-syntax-highlighting font-awesome

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
