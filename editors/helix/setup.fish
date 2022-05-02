sudo dnf copr enable -y varlad/helix
sudo dnf install -y helix

rm $editors_dir/helix/*.fish
mv $editors_dir/helix $nud/.config/