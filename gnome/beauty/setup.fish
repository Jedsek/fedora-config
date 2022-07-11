for part in $gnome_dir/beauty/*/setup.fish
    fish -N $part
end

# xhost +SI:localuser:gdm
# gsettings set org.gnome.desktop.interface text-scaling-factor 1.2
# sudo -u gdm gsettings set org.gnome.desktop.interface text-scaling-factor 1.2