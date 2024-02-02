#! /bin/bash

sudo pacman -Sy --noconfirm libxft libxinerama vim neovim wmname udiskie xbindkeys xcompmgr numlockx xwallpaper xdotool python-pywal noto-fonts-emoji
sudo pacman -S --needed base-devel && git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si
paru -Sy --noconfirm clipmenu-git ttf-ms-fonts nemo

mkdir -p /home/$USER/.local/src
cp -r /home/$USER/dotfiles/src/* /home/$USER/.local/src
cd /home/$USER/.local/src/dwm && sudo make clean install
cd /home/$USER/.local/src/dmenu && sudo make clean install
cd /home/$USER/.local/src/st && sudo make clean install

cd /home/$USER/dotfiles

cp .bash_profile .bashrc .xinitrc .gitconfig ~/

echo "Setup Complete!"
