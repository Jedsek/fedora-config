sudo mkdir /usr/share/backgrounds/user/
sudo cp -r $gnome_dir/beauty/backgrounds/list/* /usr/share/backgrounds/user/
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/user/F35-01-day.png'
gsettings set org.gnome.desktop.background picture-uri-dark  'file:///usr/share/backgrounds/user/F35-01-day.png'