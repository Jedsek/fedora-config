function show_schemas 
    for i in ~/.local/share/gnome-shell/extensions/*/schemas
        echo $i
    end
end

set -l OPTS describe get list-children list-keys list-recursively list-relocatable-schemas list-schemas range reset reset-recursively set writable
set -l DISCRIPTION "Print the description of a key" "Get the value of a key" "List all children of a schema" "List all keys in a schema" "List keys and values, recursively" "List all installed, relocatable schemas" "List all installed, non-relocatable schemas" "Determine the valid value range of a key" "Reset a key to its default value" "Reset all keys under the given schema" "Set the value of a key" "Determine if a key is writable"

for arr_num in (seq 12)
    complete -x -c gpref -n "__fish_use_subcommand" -a $OPTS[$arr_num] -d $DISCRIPTION[$arr_num]
end

complete -x -c gpref -n "__fish_seen_subcommand_from $OPTS" -a "(gnome-extensions list --user)"