#!/usr/bin/env bash

sudo dnf install -y util-linux-user
sudo dnf install -y feh axel neofetch jq bsdtar
sudo dnf install -y zoxide procs exa bat ripgrep fd-find sd
sudo dnf install -y wl-clipboard trash-cli
sudo dnf install -y gtk4-devel

sudo cnpm i -g hexo