function valac -w "valac"
    ## 如果想得到vala文件编译成的c文件, 即传入 `-C`, `--ccode` 参数
    ## 此时不需要传入 `-X -w` 来无视警告, 不然valac会提示说不需要, 挺烦的
    ## 因此, 如下写, 使得二者不会共同出现
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