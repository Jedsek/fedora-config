for part in $gnome_dir/beauty/*/setup.fish
    fish -N $part
end

gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

# xhost +SI:localuser:gdm
# gsettings set org.gnome.desktop.interface text-scaling-factor 1.2
# sudo -u gdm gsettings set org.gnome.desktop.interface text-scaling-factor 1.2