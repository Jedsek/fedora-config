cd (status dirname)
set -x firefox_dir       (pwd)
set -x nu      (ls /home/ | head -n 1)
set -x nud  /home/$nu
mv $firefox_dir/** $nud/.mozilla/firefox/*.default-release/
