starship   init fish | source
zoxide     init fish | source


set -U fish_greeting ""
set -gx EDITOR hx
set -gx PATH   $HOME/.cargo/bin $PATH
set -x RUSTUP_UPDATE_ROOT https://mirrors.ustc.edu.cn/rust-static/rustup
set -x RUSTUP_DIST_SERVER https://mirrors.ustc.edu.cn/rust-static

function fish_user_key_bindings
    fish_default_key_bindings    
end 

for function in $HOME/.config/fish/functions/**.fish
    source $function
end

for completion in $HOME/.config/fish/completions/**.fish
    source $completion
end