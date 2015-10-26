
# bash functions

#git.zsh

# git_current_branch
function current_branch() {
    ref=$(git symbolic-ref --short -q HEAD)
    echo ${ref#refs/heads/}
}

function gpull() {
        git pull origin $(current_branch)
}

function gpush() {
        git push origin $(current_branch)
}
