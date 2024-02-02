#! /bin/bash
pacman -Sy git libxft libxinerama vim neovim wmname udiskie xbindkeys xcompmgr numlockx xwallpaper xdotool

sudo pacman -S --needed base-devel && git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si
paru -Sy clipmenu-git ttf-ms-fonts
cd ~
mkdir -p .local/src
cp -r ~/dotfiles/src/* ~/.local/src
cd ~/.local/src/dwm
make clean install
cd ~/.local/src/dmenu
make clean install
cd ~/.local/src/st
make clean install

cd ~/dotfiles

cp .bash_profile .bashrc .xinitrc ~/

echo "Setup Complete!"
