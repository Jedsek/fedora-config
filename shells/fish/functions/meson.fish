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
echo "project('$project', ['vala', 'c'], version = '0.1.0')

glib_dep =    dependency('glib-2.0')
gobject_dep = dependency('gobject-2.0')
gee_dep =     dependency('gee-0.8')
gio_dep =     dependency('gio-2.0')
gtk_dep =    dependency('gtk4')

dependencies = [
  glib_dep,
  gobject_dep,
  gee_dep,
  gio_dep,
  gtk_dep
]

sources = files('src/main.vala')

executable(meson.project_name(), sources, dependencies: dependencies)" > ./meson.build

echo 'void main() {
    stdout.printf("Hello world!");
}' > ./src/main.vala
        case "*"
            echo "It is not supported now."
    end
end