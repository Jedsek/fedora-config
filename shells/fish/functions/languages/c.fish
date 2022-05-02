function pkg-config -w "pkg-config"
    command pkg-config $argv | string split -n " "
end
