sudo dnf install -y gnome-builder


mkdir $nud/.config/gnome-builder
rm $editors_dir/gnome-builder/*.fish
mv $editors_dir/gnome-builder/* $nud/.config/gnome-builder/


gsettings set org.gnome.builder window-maximized true
gsettings set org.gnome.builder projects-directory 'Projects'

gsettings set org.gnome.builder.editor auto-save-timeout 2
gsettings set org.gnome.builder format-on-save true
gsettings set org.gnome.builder.plugins.copyright update-on-save false

gsettings set org.gnome.builder.editor keybindings 'default'

gsettings set org.gnome.builder.editor style-scheme-name 'Adwaita-dark'
gsettings set org.gnome.builder.editor font-name 'Source Code Pro 14'
gsettings set org.gnome.builder.terminal font-name 'Source Code Pro 14'
gsettings set org.gnome.builder style-variant 'dark'

gsettings set org.gnome.builder.editor highlight-current-line true
gsettings set org.gnome.builder.editor highlight-matching-brackets true

gsettings set org.gnome.builder.editor completion-n-rows 10

gsettings set org.gnome.builder.editor show-grid-lines false
gsettings set org.gnome.builder.editor show-line-numbers true
gsettings set org.gnome.builder.editor show-relative-line-numbers false
gsettings set org.gnome.builder.editor scroll-offset 3

gsettings set org.gnome.builder.workbench bottom-position 400
gsettings set org.gnome.builder.workbench left-position 300
gsettings set org.gnome.builder.workbench bottom-visible false

gsettings set org.gnome.builder.plugins.eslint enable-eslint true
gsettings set org.gnome.builder.plugins.stylelint enable-stylelint true