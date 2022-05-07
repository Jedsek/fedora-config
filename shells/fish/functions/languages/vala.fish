function valac -w "valac"
    if string match -rq -- "-C|--ccode" $argv
        command valac $argv
    else
        command valac -X -w $argv    
    end
end

function vala -w "valac"
    command vala -X -w --cc clang $argv
end