//ping -A -i 5 --apple-time 1.1.1.1 | awk '{print $8}'
// cat ping.txt | awk '{print $8}' | cut -c 6-10
ping -A -i 5 --apple-time 1.1.1.1 >> ping.txt &
while [ 1 -lt 2 ] ; do sleep 5 && echo `cat ping.txt | awk '{print $8}' | cut -c 6-10 | tail -1` ; done
