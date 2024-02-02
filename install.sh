#! /bin/bash

sudo pacman -Sy --noconfirm libxft libxinerama vim neovim wmname udiskie xbindkeys xcompmgr numlockx xwallpaper xdotool
sudo pacman -S --needed base-devel && git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si
paru -Sy --noconfirm clipmenu-git ttf-ms-fonts
cd ~
mkdir -p .local/src
cp -r ~/dotfiles/src/* ~/.local/src
cd ~/.local/src/dwm
sudo make clean install
cd ~/.local/src/dmenu
sudo make clean install
cd ~/.local/src/st
sudo make clean install

cd ~/dotfiles

cp .bash_profile .bashrc .xinitrc .gitconfig ~/

echo "Setup Complete!"
