sudo dnf install -y haskell-platform

cabal user-config init
sed -i 's/repository hackage.haskell.org/repository mirrors.ustc.edu.cn/g'  ~/.cabal/config
sed -i 's/http:\/\/hackage.haskell.org\//http:\/\/mirrors.ustc.edu.cn\/hackage\//g'  ~/.cabal/config
sed -i 's/-- secure: True/secure: True/g' ~/.cabal/config
cabal update