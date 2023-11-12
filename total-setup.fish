cd (status dirname)
set -x scripts_dir       (pwd)
set -x nu      (ls /home/ | head -n 1)
set -x nud     /home/$nu

sudo chmod -R 777 $nud/.local/ $nud/.config/

fish -N $scripts_dir/gnome/setup.fish
fish -N $scripts_dir/editors/setup.fish
fish -N $scripts_dir/terminals/setup.fish
fish -N $scripts_dir/fcitx5/setup.fish
fish -N $scripts_dir/code/setup.fish

sudo rm -rf /root/.config
sudo ln -s  $nud/.config /root/

mkdir -p ~/.icons/default/
mv $scripts_dir/index.theme ~/.icons/default/

sudo bash -c "echo 'net.ipv4.ip_unprivileged_port_start=0' > /etc/sysctl.d/50-unprivileged-ports.conf"
sudo sysctl --system


echo "Reboot now......"
sudo rm -rf $scripts_dir
sudo sed -i '$d' /etc/sudoers
reboot