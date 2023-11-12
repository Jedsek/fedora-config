#!/usr/bin/env bash

sudo dnf update -y

sh $scripts_dir/base/list/update-time.sh
sh $scripts_dir/base/list/disable-service.sh
sh $scripts_dir/base/list/clean.sh
sh $scripts_dir/base/list/managers.sh
sh $scripts_dir/base/list/install-software.sh
sh $scripts_dir/base/list/git-config.sh
sh $scripts_dir/base/list/replace-command.sh