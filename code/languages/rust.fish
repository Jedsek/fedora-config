curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
echo '
[source.crates-io]
replace-with = \'tuna\'

[source.tuna]
registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"
' > $nud/.cargo/config


sudo dnf copr enable -y robot/rust-analyzer
sudo dnf install -y rust-analyzer