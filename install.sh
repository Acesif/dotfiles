#! /bin/bash
su

pacman -Sy git libxft libxinerama vim neovim wmname udiskie xbindkeys xcompmgr numlockx xwallpaper xdotool ttf-ms-fonts

pacman -Sy --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si 

yay -Sy clipmenud

mkdir -p .local/src
cp -r dotfiles/src/* ~/.local/src
cd .local/src

cd dwm
make clean install
cd ../dmenu
make clean install
cd ../st
make clean install

cd dotfiles

cp .bash_profile .bashrc .xinitrc ~/

echo "Setup Complete!"
