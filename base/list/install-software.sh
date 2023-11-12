#!/usr/bin/env bash

sudo dnf install -y util-linux-user rlwrap
sudo dnf install -y imv axel neofetch jq bsdtar cronie gh unrar xkb-switch
sudo dnf install -y wl-clipboard ffmpeg
sudo dnf install -y gtk4-devel
sudo dnf install -y nautilus

sudo dnf groupinstall -y "Development Tools"

# sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
# sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge
# sudo dnf install -y microsoft-edge-beta

sudo cnpm i -g hexo
sudo dnf install -y fira-code-fonts