cd (status dirname)
set -x gnome_dir       (pwd)

sudo chmod -R 777 ~/.local/

fish -N $gnome_dir/extensions/setup.fish
fish -N $gnome_dir/beauty/setup.fish
cat $gnome_dir/dconf.settings | dconf load /
xhost +SI:localuser:gdm
sudo -u gdm gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
sudo -u gdm gsettings set org.gnome.desktop.peripherals.touchpad speed 0.57
sudo -u gdm gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing false