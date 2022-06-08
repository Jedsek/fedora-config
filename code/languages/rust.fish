curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
echo '[source.crates-io]
replace-with = \'ustc\'

[source.ustc]
registry = "git://mirrors.ustc.edu.cn/crates.io-index"' > $nud/.cargo/config


sudo dnf copr enable -y robot/rust-analyzer
sudo dnf install -y rust-analyzer