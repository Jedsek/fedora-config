#!/usr/bin/env bash

sudo dnf install -y util-linux-user
sudo dnf install -y feh axel neofetch jq bsdtar
sudo dnf install -y zoxide procs exa bat ripgrep fd-find sd
sudo dnf install -y wl-clipboard
sudo dnf install -y gtk4-devel
sudo dnf install -y nautilus

# sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
# sudo dnf config-manager --add-repo https://packages.microsoft.com/yumrepos/edge
# sudo dnf install -y microsoft-edge-beta

sudo cnpm i -g hexo
sudo dnf install -y fira-code-fonts