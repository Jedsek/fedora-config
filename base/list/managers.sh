#!/usr/bin/env bash

# Mirror
# sudo sed -e 's|^metalink=|#metalink=|g' \
#          -e 's|^#baseurl=http://download.example/pub/fedora/linux|baseurl=https://mirrors.ustc.edu.cn/fedora|g' \
#          -i.bak \
#          /etc/yum.repos.d/fedora.repo \
#          /etc/yum.repos.d/fedora-modular.repo \
#          /etc/yum.repos.d/fedora-updates.repo \
#          /etc/yum.repos.d/fedora-updates-modular.repo

# RPM Fusion
sudo dnf install -y https://mirrors.ustc.edu.cn/rpmfusion/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.ustc.edu.cn/rpmfusion/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf makecache
sudo dnf upgrade -y

# Flatpak
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Cnpm
sudo dnf install -y nodejs
sudo npm install -g cnpm --registry=https://registry.npmmirror.com