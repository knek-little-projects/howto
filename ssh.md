```bash
##########################################################
# Как добавить ключ вместо пароля
##########################################################
# REMOTE
ssh-keygen -t rsa 
mv ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys 
chmod 600 ~/.ssh/authorized_keys 


# LOCAL
mkdir ~/.ssh 
chmod 700 ~/.ssh
scp x@qwe-site.ru:/home/x/.ssh/id_rsa ~/.ssh/qwe-x
ssh -i ~/.ssh/qwe-x x@qwe-site.ru
nano ~/.ssh/config
    Host qwe qwe-site.ru
        HostName qwe-site.ru
        IdentityFile ~/.ssh/qwe-root
        User root
ssh x@qwe-site.ru


# REMOTE
nano /etc/ssh/sshd_config
    PasswordAuthentication no
service ssh restart



##########################################################
# Конфиг с шорткатами (~/.ssh/config)
##########################################################
Host qwe qwe.ru
    HostName qwe.ru
    IdentityFile ~/.ssh/qwe-root
    User root
    
    
Host qwe qwe.ru
    HostName qwe.ru
    IdentityFile ~/.ssh/qwe-user
    User user


##########################################################
# Проброс портов
##########################################################
# Config to make available -R RPORT:LHOST:LPORT
nano /etc/ssh/sshd_config
  GatewayPorts yes

alias sshc='ssh -qnCNT'
# -n (/dev/null)
# -N (no cmd)
# -T (no tty)
# -q (quiet)
# -C (compress)

# PORT FORWARDING
# https://unix.stackexchange.com/questions/115897/whats-ssh-port-forwarding-and-whats-the-difference-between-ssh-local-and-remot
# local:9000 <-> user@remote <-> SITE:80
ssh -qnCNT -L 9000:SITE:80 user@remote
# optionally LOCALLY redirect traffic (SITE:80 -> local:9000)
iptables -t nat -A OUTPUT -p tcp -d SITE --dport 80 -j DNAT --to-destination 127.0.0.1:9000

# user@remote:9000 <-> local <-> SITE:80
ssh -qnCNT -R 9000:SITE:80 user@remote  
# нужно учитывать, что не рутовые пользователи не могут открывать привелигированные порты!
# т.е. не получится сделать ssh -R 23:other:22 test@127.0.0.1, но можно сделать ssh -R 12345:other:22

# SOCKS4 прокси
ssh -qnCNT -D 8123 qwe  # Compress, quiet, Nologin

# NOTES:
# https://unix.stackexchange.com/questions/29912/how-do-i-know-if-my-ssh-tunnel-is-created-successfully
# -o ExitOnForwardFailure=yes
# sshc ... -S tunnel.sock
# sshc ... -S tunnel.sock -O exit
```
