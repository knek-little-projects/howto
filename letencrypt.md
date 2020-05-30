16:22:12%:root:~# certbot certonly -d terc.app --manual 
16:21:12%:root:~# rsync -avzh $(readlink -f /etc/letsencrypt/live/terc.app/privkey.pem) root@terc:/root/cert.key^C
16:21:12%:root:~# rsync $(readlink -f /etc/letsencrypt/live/terc.app/cert.pem) root@terc:/root/cert.crt

