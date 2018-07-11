tcpdump -Aneri
tcpdump -w capture.cap
tcpdump dst port 23
tcpdump dst portrange 1-1023
tcpdump -s0 -A host 192.168.1.1 and tcp port http
tcpdump -s0 -A host 192.168.1.1 and tcp port 8080
