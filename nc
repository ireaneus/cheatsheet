```sh
# To open a TCP connection to port 42 of host.example.com, using port 31337 as the source port, with a timeout of 5 seconds:
nc -p 31337 -w 5 host.example.com 42

# To open a UDP connection to port 53 of host.example.com:
nc -u host.example.com 53

# To open a TCP connection to port 42 of host.example.com using 10.1.2.3 as the IP for the local end of the connection:
nc -s 10.1.2.3 host.example.com 42

# To create and listen on a UNIX-domain stream socket:
nc -lU /var/tmp/dsocket

# To connect to port 42 of host.example.com via an HTTP proxy at 10.2.3.4, port 8080. This example could also be used by ssh(1); see the ProxyCommand directive in ssh_config(5) for more information.
nc -x10.2.3.4:8080 -Xconnect host.example.com 42

# The same example again, this time enabling proxy authentication with username "ruser" if the proxy requires it:
nc -x10.2.3.4:8080 -Xconnect -Pruser host.example.com 42

# To choose the source IP for the testing using the -s option
nc -zv -s source_IP target_IP Port


# Example of nc server and client testing failed
[ansible@server1 ~]$ nc -v usserver2 3208
nc: connect to usserver2 port 3208 (tcp) failed: Connection timed out

[root@usserver1 ~]# tcpdump host usserver2 and port 3208
[root@usserver1 ~]# iptables -n -L | grep 3208
ACCEPT tcp -- 0.0.0.0/0 0.0.0.0/0 tcp dpt:3208


# Example of nc server and client testing pass
[bwdave@server1]$ nc -l 80

[bwdave@server2]$ nc -v server1 80
Hello
```
