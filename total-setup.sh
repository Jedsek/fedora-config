#!/usr/bin/env bash

cd $(dirname $0)
export scripts_dir=$(pwd)

sudo bash -c "echo -e '\nDefaults env_reset,timestamp_timeout=-1' >> /etc/sudoers"

sh $scripts_dir/base/setup.sh
sh $scripts_dir/shells/setup.sh

fish -N $scripts_dir/dos2unix.fish
fish -N $scripts_dir/total-setup.fish