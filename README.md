dotfiles
========

Basic dotfiles


- Directory Tabs to (2) spaces -> *does not recurse*
```
find . -name '*.js' ! -type d -exec bash -c 'expand -t 2 "$0" > /tmp/e && mv /tmp/e "$0"' {} \;
```
