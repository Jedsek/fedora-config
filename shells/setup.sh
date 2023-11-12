#!/usr/bin/env bash

cd $(dirname $0)
export shells_dir=$(pwd)
export nu=$(ls /home/ | head -n 1)
export nud=/home/$nu

sudo dnf copr enable atim/nushell -y 
sudo dnf install -y fish nushell
# sudo dnf install -y starship
rm -rf $nud/.config/fish/
rm -rf $nud/.config/nushell/

mv -f $shells_dir/fish/ $nud/.config/
mv -f $shells_dir/nushell/ $nud/.config/
mv -f $shells_dir/starship/starship.toml $nud/.config/
mv -f $shells_dir/xplr/ $nud/.config/

sudo chsh -s $(which fish) $nu
sudo chsh -s $(which fish) root

chmod a+x $nud/.config/fish/alias/*
sudo ln -s (realpath $nud/.config/fish/alias/*) /usr/bin/

echo "#!/usr/bin/env imv" > /usr/bin/eog