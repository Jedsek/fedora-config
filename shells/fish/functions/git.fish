# Git
function g -w git
    git $argv
end


# Git Add
function ga -w "git add" -d "Git Add"
    git add $argv
end

function gaa -d "Git Add All"
    git add --all
end


# Git Commit
function gcm -d "Git commit -m"
    git commit -m $argv
end


# Git Checkout
function gco -w "git checkout" -d "Git Checkout"
    git checkout $argv
end


# Git Push
function gp -w "git push" -d "Git Push"
    git push $argv
end


# Git Config
function gce -d "Git Config User.Email"
    git config --global user.email $argv
end

function gcn -d "Git Config User.Name"
    git config --global user.name $argv
end