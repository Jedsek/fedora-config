set uuid
set ext_name

function ges
    set -l ext_key  $argv[1]
    set -l ext_val  $argv[2]
    
    gsettings --schemadir ~/.local/share/gnome-shell/extensions/$uuid/schemas/ \
    set org.gnome.shell.extensions.$ext_name $ext_key $ext_val
end

function set_name
    if [ $argv[1] = --second ]
        set uuid $argv[2]
        set ext_name (string split @ $uuid)[2]
    else
        set uuid $argv[1]
        set ext_name (string split @ $uuid)[1]
    end
end

# Nothing-to-say
set_name nothing-to-say@extensions.gnome.wouter.bolsterl.ee
ges play-feedback-sounds false

# Auto-move-windows
set_name auto-move-windows@gnome-shell-extensions.gcampax.github.com
ges application-list "[
'firefox.desktop:1', 'microsoft-edge-beta.desktop:1', 
'xfce4-terminal.desktop:2', 'Alacritty.desktop:2', 'org.gnome.Terminal.desktop:2',
'steam.desktop:3', 
'org.gnome.Boxes.desktop:4'
]"

# Overview-Navigation
set_name overview-navigation@nathanielsimard.github.com
ges border-size 3
ges border-color "rgb(53,132,228)"

# Gnome 4x UI Improvements
set_name gnome-ui-tune@itstime.tech
ges hide-search true

# Workspace Switcher Manager
set_name workspace-switcher-manager@G-dH.github.com
ges active-show-app-name false ; ges active-show-ws-name true ; ges inactive-show-app-name false ; ges inactive-show-ws-name true
ges active-show-win-title false ; ges active-show-ws-index false ; ges inactive-show-win-title false ; ges inactive-show-ws-index false
ges on-screen-time 520 ; ges ws-ignore-last true ; ges fade-out-time 96 ; ges popup-mode 0 ; ges popup-radius-scale 30 ; ges reverse-popup-orientation true
ges vertical 50 ; ges horizontal 100 ;  ges popup-opacity 82
ges popup-scale 100 ; ges ws-wraparound false ; ges modifiers-hide-popup true ; ges reverse-ws-orientation false ;  ges popup-width-scale 136
ges active-prefs-page 0 ; ges hide false ; ges text-bold true ; ges font-scale 150

# Just Perfection
set_name --second just-perfection-desktop@just-perfection
ges panel-button-padding-size 9 ; ges animation 3 ; ges clock-menu-position 1 ; ges background-menu false
ges accessibility-menu false ; ges activities-button false ; ges panel false ;  ges notification-banner-position 2
ges panel-in-overview true ; ges app-menu false ; ges window-preview-close-button false ; ges hot-corner false ; ges dash false
ges search false ; ges keyboard-layout false ; ges panel-notification-icon true ; ges show-apps-button false ; ges window-preview-caption false
ges window-picker-icon false ; ges app-menu-icon false ; ges double-super-to-appgrid false

# ControlBlurEffectOnLockScreen
gsettings  --schemadir ~/.local/share/gnome-shell/extensions/ControlBlurEffectOnLockScreen@pratap.fastmail.fm/schemas/ \
set org.gnome.shell.extensions.blur sigma 999
gsettings  --schemadir ~/.local/share/gnome-shell/extensions/ControlBlurEffectOnLockScreen@pratap.fastmail.fm/schemas/ \
set org.gnome.shell.extensions.blur brightness 1.0