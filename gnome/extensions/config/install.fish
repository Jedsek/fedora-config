set exts_list

for ext in $gnome_dir/extensions/list/*.zip
    set uuid ( unzip -p $ext metadata.json | jq -r ".uuid" )
    mkdir -p $ext_dir/$uuid
    unzip -q -o $ext -d $ext_dir/$uuid
    set -a exts_list \'$uuid\'
end

set exts_list [( string join "," $exts_list )]
gsettings set org.gnome.shell enabled-extensions $exts_list