function c -w clear
    clear
end

function ls -w exa
    exa $argv
end

function q -a args -d "List with tree-format"
    if not set -q args[1]
        exa -T
    else if string match -rq "\w*" $args[1]
        exa -T $args
    else
        exa -T -L $args
    end
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