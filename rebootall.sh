ansible -i inventory.ini -m raw -a "reboot" all -u pi --become

echo "Sleeping 60s"
sleep 60
echo "Pinging..."


sh pingall.sh
