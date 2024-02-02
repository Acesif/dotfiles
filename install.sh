#! /bin/bash
MAKESL=sudo make clean install
sudo pacman -Sy -- noconfirm libxft libxinerama vim neovim wmname udiskie xbindkeys xcompmgr numlockx xwallpaper xdotool
sudo pacman -S --needed base-devel && git clone https://aur.archlinux.org/paru.git && cd paru && makepkg -si
paru -Sy --noconfirm clipmenu-git ttf-ms-fonts
cd ~
mkdir -p .local/src
cp -r ~/dotfiles/src/* ~/.local/src
cd ~/.local/src/dwm
$MAKESL
cd ~/.local/src/dmenu
$MAKESL
cd ~/.local/src/st
$MAKESL

cd ~/dotfiles

cp .bash_profile .bashrc .xinitrc .gitconfig ~/

echo "Setup Complete!"
