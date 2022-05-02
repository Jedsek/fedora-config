cd (status dirname)
set -x code_dir    (pwd)
set -x nu          (ls /home/ | head -n 1)
set -x nud         /home/$nu

for part in $code_dir/languages/*.fish
    fish -N $part
end

for part in $code_dir/build-tools/*.fish
    fish -N $part
end

for part in $code_dir/formatters/*.fish
    fish -N $part
end