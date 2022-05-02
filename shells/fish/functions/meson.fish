function m -d "Alias for Meson"
    switch $argv
        case "b"
            meson setup build
         case "r"
             meson --reconfigure build
        case "*"
            echo "No this options!"
    end
end

function mi -d "To init meson.build" -a argv
    set project (basename (pwd))
    set supported_langs vala
    switch $argv
        case "-h" or "--help"
echo -e "This comamnd could help you create meson project.\n"

echo "Usage: mi [options]
  mi -h    # Show help
  mi -l    # List supported languages
  mi vala  # Create a vala&&meson proj
"
echo "Args:
  -h, --help    Show helps
  -l, --list    List supported languages
"
        case "-l" or "--list"
            echo -e "Supperted Languages:"
            for lang in $supported_langs
                echo "- "$lang
            end
        
        case "vala"
            mkdir -p src && touch src/main.vala src/meson.build
echo "project('$project', ['vala', 'c'])        

dependencies = [
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('gee-0.8'),
]

sources = files('src/main.vala')

executable('$project', sources, dependencies: dependencies)" > ./meson.build

echo 'void main() {
    stdout.printf("Hello world!");
}' > ./src/main.vala
        case "*"
            echo "It is not supported now."
    end
end