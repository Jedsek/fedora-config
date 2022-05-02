for i in (seq 1 9)
    gsettings set org.gnome.shell.keybindings switch-to-application-$i "[]"                        ## Default: Super+"1..9"
end

gsettings set org.gnome.mutter.wayland.keybindings restore-shortcuts "[]"                          ## Default: Super+Escape
gsettings set org.freedesktop.ibus.general.hotkey triggers "[]"                                    ## Default: Super+Space
gsettings set org.gnome.shell.keybindings toggle-overview "[]"                                     ## Default: Super+S
gsettings set org.gnome.shell.keybindings focus-active-notification "[]"                           ## Default: Super+N