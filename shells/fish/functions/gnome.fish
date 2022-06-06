function gpref -a do_what ext_uuid l_or_r key val -d "Preferences for GNOME extensions" 
    set -l arr_num
    set ext_name (echo $ext_uuid | string split @)
    switch $l_or_r
        case "l" "1"
            set arr_num 1
        case "r" "2"
            set arr_num 2
        case "*"
            echo "Sorry, your input for l_or_r is wrong." 
            return 1
    end
    switch $do_what
        case "set"
            gsettings --schemadir ~/.local/share/gnome-shell/extensions/$ext_uuid/schemas/ \
            set org.gnome.shell.extensions.$ext_name[$arr_num] $key $val
        case "*"
             gsettings --schemadir ~/.local/share/gnome-shell/extensions/$ext_uuid/schemas/ \
            $do_what org.gnome.shell.extensions.$ext_name[$arr_num]       
    end
end