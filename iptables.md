```bash
# block browsing site
iptable -A OUTPUT -d eatmanga.com -j REJECT
iptables-save > /etc/iptables.rules
iptables-restore < /etc/iptables.rules

# flush
iptables -t nat -F 

# enable forwarding
sysctl net.ipv4.ip_forward=1

# locally redirect traffic (SITE:80 -> local:9000)
iptables -t nat -A OUTPUT -p tcp -d SITE --dport 80 -j DNAT --to-destination 127.0.0.1:9000

# redirect from local port -> ip:port
SOURCE=test.qwe.ru
LPORT=8889
REMOTE=10.10.10.10:8889

iptables -t nat -A PREROUTING -s $SOURCE -p tcp --dport $LPORT -j DNAT --to-destination $REMOTE
iptables -t nat -A POSTROUTING -j MASQUERADE
```
