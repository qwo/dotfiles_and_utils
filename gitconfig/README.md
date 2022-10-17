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
ssh-keygen -t rsa  -C "stanley@cyber.nyc.gov" -f $HOME/.ssh/work/id_rsa
cat $HOME/.ssh/cyber/id_rsa.pub | pbcopy