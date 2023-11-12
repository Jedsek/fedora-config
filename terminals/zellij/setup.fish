sudo dnf copr enable -y varlad/zellij
sudo dnf install -y zellij

mkdir $nud/.config/zellij
rm $terminals_dir/zellij/*.fish
mv $terminals_dir/zellij $nud/.config/