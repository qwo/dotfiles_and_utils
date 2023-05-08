git config between computers



``` Generate id-rsa keys
mkdir -p $HOME/.ssh/personal
ssh-keygen -t rsa  -C "stanley@zheng.nyc" -f $HOME/.ssh/personal/id_rsa
cat $HOME/.ssh/personal/id_rsa.pub | pbcopy

mkdir -p $HOME/.ssh/hype
ssh-keygen -t rsa  -C "stanley@hyperdrive.tech" -f $HOME/.ssh/hype/id_rsa
cat $HOME/.ssh/hype/id_rsa.pub | pbcopy
```

mkdir -p $HOME/.ssh/work
ssh-keygen -t rsa  -C "szheng@voltus.co" -f $HOME/.ssh/work/id_rsa
cat $HOME/.ssh/work/id_rsa.pub | pbcopy



### nmake new branchs from head instantly 
```
git config --global alias.new-branch '!sh -c "git checkout main && git pull && git checkout -b \"$1\"" -'
git new-branch feature/new-feature
git new-branch bug/oh-no
```

