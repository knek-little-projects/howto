openssl
-------

Howto encrypt:
```
openssl aes-256-cbc -e < in > out
```

Howto decrypt:
```
openssl aes-256-cbc -d < in > out
```

gpg
---

Encrypt-decrypt:
```
gpg --output ${enc} --symmetric --cipher-algo AES256 ${orig}
gpg --output ${dec} --decrypt ${enc}
```

Правда эта штука создает кэш с паролем:
```
rm -rf ../.gnupg/ 
```