#!/usr/bin/env bash

sudo dnf remove -y abrt gnome-abrt gnome-software gnome-weather gnome-contacts gnome-maps gnome-calendar
sudo dnf remove -y gnome-clocks gnome-disk-utility baobab cheese totem samba-client rhythmbox
sudo dnf remove -y gnome-tour

sudo rm /usr/bin/gnome-help
sudo dnf clean all