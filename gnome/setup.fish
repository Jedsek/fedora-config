cd (status dirname)
set -x gnome_dir       (pwd)

sudo chmod -R 777 ~/.local/

fish -N $gnome_dir/extensions/setup.fish
cat $gnome_dir/dconf-settings | dconf load /