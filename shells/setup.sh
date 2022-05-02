#!/usr/bin/env bash

cd $(dirname $0)
export shells_dir=$(pwd)
export nu=$(ls /home/ | head -n 1)
export nud=/home/$nu

sudo dnf install -y fish starship
rm -rf $nud/.config/fish/
mv -f $shells_dir/fish/ $nud/.config/
mv -f $shells_dir/starship/starship.toml $nud/.config/

sudo chsh -s $(which fish) $nu
sudo chsh -s $(which fish) root