cd (status dirname)
set -x terminals_dir       (pwd)
set -x nu      (ls /home/ | head -n 1)
set -x nud     /home/$nu


for part in $terminals_dir/*/setup.fish
    fish -N $part
end