for counter in {1..10000}; do 
 curl 192.168.49.2:30000 
 echo ${counter}
 sleep $1
done 