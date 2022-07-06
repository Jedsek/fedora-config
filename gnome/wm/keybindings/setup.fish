set wmk gsettings set org.gnome.desktop.wm.keybindings
set mtk gsettings set org.gnome.mutter.keybindings

$wmk minimize                  "['<Super>comma']"               ## Default:  Super+H
$wmk toggle-fullscreen         "['<Super>f']"                   ## Default:  None
$wmk close                     "['<Super><Shift>q']"            ## Default:  Alt+F4
$wmk begin-resize              "['<Super>r']"                   ## Default:  Alt+F8
$wmk toggle-maximized          "['<Super>m']"                   ## Default:  Alt+F10
$wmk begin-move                "['<Super>x']"                   ## Default:  Alt+F7
$wmk activate-window-menu      "['']"                           ## Default:  Alt+Space
$wmk show-desktop              "['<Super>d']"                   ## Default:  None

for i in (seq 1 9)
    $wmk switch-to-workspace-$i [\'\<Super\>$i\']
    $wmk move-to-workspace-$i   [\'\<Super\>\<Shift\>$i\']
end
$wmk switch-to-workspace-10     [\'\<Super\>0\']
$wmk move-to-workspace-10       [\'\<Super\>\<Shift\>0\']

# HJKL like VIM
$mtk toggle-tiled-right   "['<Super>l']"
$mtk toggle-tiled-left    "['<Super>h']"
$wmk unmaximize           "['<Super>k']"
$wmk maximize             "['<Super>j']"