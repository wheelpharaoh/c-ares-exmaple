#!/bin/sh
#strace -o strace.txt python3 /code/svc.py &
#python3 /code/svc.py &
echo "search local.lan
nameserver 2605:e000:1309:d8f6::1
nameserver 192.168.1.1
ndots 5" > /etc/resolv.conf
envoy -c /etc/envoy.yaml --service-cluster localsvc -l trace