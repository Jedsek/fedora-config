sudo dnf copr enable -y varlad/zellij
sudo dnf install -y zellij

mkdir $nud/.config/zellij
rm $terminals_dir/zellij/*.fish
mv $terminals_dir/zellij $nud/.config/

sudo bash -c "echo 'zellij options --no-pane-frames --copy-command wl-copy' > /usr/bin/zj"
sudo chmod a+x /usr/bin/zj