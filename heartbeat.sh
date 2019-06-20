DATE=`date +%Y-%m-%d`
TS=$(date --iso-8601=seconds)
hostname=$(hostname)
curl -H "Content-Type: application/json" -XPOST -d '{"gateway":"'$hostname'","timestamp":"'$TS'"}' 192.168.77.100:9200/heartbeat-$DATE/mytype/


#also sync the time
echo ""
ntpdate -u 192.168.77.100
