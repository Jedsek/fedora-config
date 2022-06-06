function valac -w "valac"
    if string match -rq -- "-C|--ccode" $argv
        command valac $argv
    else
        ## -X 表示之后的参数是传递给c语言编译器的参数
        ## -w 表示c编译器会无视所有警告
        command valac -X -w $argv    
    end
end

function vala -w "valac"
    command vala -X -w --cc clang $argv
end