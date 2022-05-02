sudo dnf install -y alacritty

mkdir $nud/.config/alacritty/
mv -f $terminals_dir/alacritty/alacritty.yml $nud/.config/alacritty/

# sudo touch /usr/bin/alacritty-x
# sudo chmod a+x /usr/bin/alacritty-x
# sudo echo "env WINIT_UNIX_BACKEND=x11 alacritty" > /usr/bin/alacritty-x