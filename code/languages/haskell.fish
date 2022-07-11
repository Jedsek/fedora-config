sudo dnf install -y haskell-platform

echo ':set prompt "ghci> "' > ~/.ghci
chmod go-w /home/jedsek/.ghci

cabal user-config init
sed -i 's/repository hackage.haskell.org/repository mirrors.ustc.edu.cn/g' ~/.cabal/config
sed -i 's/http:\/\/hackage.haskell.org\//http:\/\/mirrors.ustc.edu.cn\/hackage\//g' ~/.cabal/config
sed -i 's/-- secure: True/secure: True/g' ~/.cabal/config
cabal update

sudo dnf copr enable -y petersen/haskell-language-server
sudo dnf install -y haskell-language-server