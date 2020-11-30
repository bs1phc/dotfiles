#!/bin/bash

software=$1

#[ ! -z "$software"]

case $sofware in
	ida ) exec 'wine64 /home/chp1sb/.wine/drive_c/Program\ Files/IDA\ 7.2/ida64.exe' ;;
	bp ) exec 'java -noverify -javaagent:/home/chp1sb/Hacking/Burp/burploader.jar -jar /home/chp1sb/Hacking/Burp/burpsuite_pro_v2020.9.2.jar' ;;
	cobalt ) 'exec cd /home/chp1sb/Hacking/cobalt/ && sudo ./teamserver 10.8.13.246 chp1sb && sudo ./start.sh' ;;
esac