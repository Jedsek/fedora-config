cd (status dirname)
set -x fcitx5_dir       (pwd)
set -x nu      (ls /home/ | head -n 1)
set -x nud  /home/$nu

sudo dnf install -y fcitx5 fcitx5-chinese-addons fcitx5-qt fcitx5-gtk fcitx5-configtool fcitx5-autostart

mkdir -p $nud/.config/environment.d/ $nud/.config/fcitx5/conf $nud/.local/share/fcitx5/
touch $nud/.config/environment.d/im.conf

sudo echo "
XMODIFIERS=@im=fcitx
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
" > $nud/.config/environment.d/im.conf


mv      $fcitx5_dir/conf/classicui.conf       $nud/.config/fcitx5/conf/
mv      $fcitx5_dir/conf/pinyin.conf          $nud/.config/fcitx5/conf/
mv      $fcitx5_dir/config                    $nud/.config/fcitx5/
mv      $fcitx5_dir/profile                   $nud/.config/fcitx5/
mv      $fcitx5_dir/themes                    $nud/.local/share/fcitx5/
mv      $fcitx5_dir/pinyin                    $nud/.local/share/fcitx5/