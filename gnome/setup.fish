cd (status dirname)
set -x gnome_dir       (pwd)

sudo chmod -R 777 ~/.local/

for part in $gnome_dir/*/setup.fish
    fish -N $part
end