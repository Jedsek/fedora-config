#!/usr/bin/env bash

sh $scripts_dir/base/list/update-time.sh
sh $scripts_dir/base/list/disable-service.sh
sh $scripts_dir/base/list/clean.sh
sh $scripts_dir/base/list/managers.sh
sh $scripts_dir/base/list/install-software.sh
sh $scripts_dir/base/list/git-config.sh