dotfiles
========
Dotfiles for my computer and utilities. 

These are configurations for the current computers I'm currently using and server stuff.

PAST
  - OSX
NOW 
   - Lenovo Carbon X1 Black 
      - MX Linux
      - Windows 10 
   - Server 
       - Debian
       - Ubuntu 

VSCode Sync Settings


## Commands
Interesting commands you can use. 

- Directory Tabs to (2) spaces -> *does not recurse*
```
find . -name '*.js' ! -type d -exec bash -c 'expand -t 2 "$0" > /tmp/e && mv /tmp/e "$0"' {} \;
```
- Git push to all remotes
```
alias gpar='git remote | xargs -L1 git push --all' # git remote | xargs -l git push --all
```

- Git history 
```
git log --raw | grep "^Author: " | sort | uniq -c
```


- Clone all github repos from an org
```
wget -qO- https://api.github.com/orgs/ORG/repos | jq ".[].html_url" | xargs -L 1 git clone
```

- file unix datefilestamps

```
date "+%Y%m%d_%H%M" 
```

Run on file change
``` 
fswatch . | while read; do functions-framework --target do_work --debug; done)

```

Unilateral Rsync
```
# alias run_rsync='rsync --rsync-path /usr/bin/rsync -azP --exclude ".*/" --exclude ".*" --exclude "tmp/" --exclude "*venv/*" --exclude "/home/szheng/juggernaut-devops/terraform/configs/nyc3-prod-data-excalibur-unmanaged/*" -r ~/Code/juggernaut-devops szheng@local-etl:~/'
# run_rsync; fswatch -o . | while read f; do run_rsync; done
```


## GCP

Local IAP tunnel
```

gcloud compute start-iap-tunnel <box name>  22 --local-host-port=localhost:2222 --zone=us-central1-a --project <GCP_projecT> 

```
