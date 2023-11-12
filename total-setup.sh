#!/usr/bin/env bash

cd $(dirname $0)
export scripts_dir=$(pwd)

sudo bash -c "echo -e '\nDefaults env_reset,timestamp_timeout=-1' >> /etc/sudoers"
sudo bash -c "gpasswd -a $USER input"

sudo bash -c "echo 'net.ipv4.ip_unprivileged_port_start=0' > /etc/sysctl.d/50-unprivileged-ports.conf"
sudo sysctl --system
sudo chmod a+rw /etc/hosts

sh $scripts_dir/base/setup.sh
sh $scripts_dir/shells/setup.sh

fish -N $scripts_dir/dos2unix.fish
fish -N $scripts_dir/total-setup.fish