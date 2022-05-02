cd (status dirname)
set -x gnome_dir       (pwd)
set -x nu      (ls /home/ | head -n 1)
set -x nud     /home/$nu

sudo chmod -R 777 $nud/.local/

for part in $gnome_dir/*/setup.fish
    fish -N $part
end