set -x ext_dir $nud/.local/share/gnome-shell/extensions

mkdir -p $ext_dir

fish -N $gnome_dir/extensions/config/install.fish
fish -N $gnome_dir/extensions/config/prefs.fish