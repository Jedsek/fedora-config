gsettings set org.gnome.shell favorite-apps "[]"

gsettings set org.gnome.desktop.default-applications.terminal exec 'alacritty'
sudo rm /usr/bin/gnome-terminal
sudo ln -s /usr/bin/alacritty /usr/bin/gnome-terminal