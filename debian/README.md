

optional use homebrew

git config --global user.name "Stanley Zheng"
git config --global user.email "stanley@zheng.nyc"


https://stackoverflow.com/questions/68775869/message-support-for-password-authentication-was-removed-please-use-a-personal

# git config --global credential.helper cache
# $ git config --global --unset credential.helper
# $ git config --system --unset credential.helper
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret

https://stackoverflow.com/questions/5343068/is-there-a-way-to-cache-https-credentials-for-pushing-commits