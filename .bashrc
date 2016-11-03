export PATH=$PATH:/usr/local/git/bin:/usr/local/bin:/usr/local/share/dotnet
source ~/.bash_profile
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

vscode () {
    open -a "Visual Studio Code" $1
}
