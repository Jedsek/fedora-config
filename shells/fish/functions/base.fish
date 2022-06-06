function c -w clear
    clear
end

function e -w exa
    exa $argv
end

function mkd -w mkdir -d "Make Directory"
    mkdir $argv
end

function mkf -w touch -d "Make File"
    touch $argv
end

function src -w source -d "Alias for source"
    source $agrv
end

function logout -d "Logout"
    kill fish
end