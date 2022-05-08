function __ninja_targets
    if [ -f build.ninja ]
        ninja -t targets | sed 's/:.*//'
    end
end

function __ninja_tools
    echo list
    ninja -t list | grep -v ':' | sed -Ee 's/[[:space:]]+([^[:space:]]+).*/\1/'
end

function n -d "Alias for Ninja"
    switch $argv[1]
        case "b"
            ninja -C build $argv[2]
         case "*"
            echo "No this options!"
    end
end