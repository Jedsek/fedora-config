gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.peripherals.touchpad speed 0.57
gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing false

xhost +SI:localuser:gdm
sudo -u gdm gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
sudo -u gdm gsettings set org.gnome.desktop.peripherals.touchpad speed 0.57
sudo -u gdm gsettings set org.gnome.desktop.peripherals.touchpad disable-while-typing false