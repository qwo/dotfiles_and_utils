dotfiles
========

Basic dotfiles


- Directory Tabs to (2) spaces -> *does not recurse*
```
find . -name '*.js' ! -type d -exec bash -c 'expand -t 2 "$0" > /tmp/e && mv /tmp/e "$0"' {} \;
```
- Git push to all remotes
```
alias gpar='git remote | xargs -L1 git push --all' # git remote | xargs -l git push --all
```
