#!/usr/bin/env bash

sudo bash -c 'echo -e "\nfastestmirror=True" >> /etc/dnf/dnf.conf'

# RPM Fusion
sudo dnf install -y https://mirrors.ustc.edu.cn/rpmfusion/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.ustc.edu.cn/rpmfusion/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf makecache
sudo dnf upgrade -y

# Flatpak
# flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Cnpm
sudo dnf install -y nodejs
sudo npm install -g cnpm --registry=https://registry.npmmirror.com