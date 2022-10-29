


`add pyenv`
---
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi


`add fzf`
```bash 
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
```


trick to remove everything from dock
```
https://apple.stackexchange.com/questions/360755/restrict-macos-from-automatically-enabling-keep-in-dock-after-rearranging-dock

echo ~/Library/Preferences/com.apple.dock.plist |\
  entr -s 'defaults delete com.apple.dock persistent-apps && killall Dock'
```
