starship   init fish | source
zoxide     init fish | source
if not set -q ZELLIJ
    zj
end


set -U fish_greeting "Enjoy it!"
set -gx EDITOR hx
set -gx PATH   $HOME/.cargo/bin $PATH


function fish_user_key_bindings
    fish_default_key_bindings    
end 

for function in $HOME/.config/fish/functions/**.fish
    source $function
end

for completion in $HOME/.config/fish/completions/**.fish
    source $completion
end