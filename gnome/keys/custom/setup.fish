set gp0 "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"
set gp1 "org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"


# Custom Keys
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[                                   \
    '$gp0/custom0/', '$gp0/custom1/', '$gp0/custom2/', '$gp0/custom3/'                            \
]"


## Terminal
gsettings set $gp1/custom0/ name     'Terminal'
gsettings set $gp1/custom0/ command  'alacritty'
gsettings set $gp1/custom0/ binding  '<Super>Return'

## Files
gsettings set $gp1/custom1/ name     'Files'
gsettings set $gp1/custom1/ command  'nautilus'
gsettings set $gp1/custom1/ binding  '<Super>e'

## Browser
gsettings set $gp1/custom2/ name     'Browser'
gsettings set $gp1/custom2/ command  'microsoft-edge-beta'
gsettings set $gp1/custom2/ binding  '<Super>b'

## Settings
gsettings set $gp1/custom3/ name     'Settings'
gsettings set $gp1/custom3/ command  'gnome-control-center'
gsettings set $gp1/custom3/ binding  '<Super>s'