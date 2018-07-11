```bash
$ wget https://www.vaultproject.io/downloads.html
$ wget http://pki.qwe.ru/ca.crt

$ export VAULT_ADDR="https://vault.qwe:8000"
$ export VAULT_CACERT="путь к ca.pem"

$ vault auth -method=ldap username=suser
$ vault auth -method=userpass username=suser 

$ vault list user/vpupkin/my
No value found at user/vpupkin/my

$ vault write user/vpupkin/my/qwer asdf=zxcv
Success! Data written to: user/my/vpupkin/qwer

$ vault list user/vpupkin/my
Keys
qwer

$ vault read user/vpupkin/my/qwer
Key                     Value
---                     -----
refresh_interval        720h0m0s
asdf                    zxcv

$ vault delete user/vpupkin/my/qwer
Success! Deleted 'user/vpupkin/my/qwer' if it existed.
------------------------------------------------------------
$ vault list user/vpupkin/my
No value found at user/vpupkin/my
```