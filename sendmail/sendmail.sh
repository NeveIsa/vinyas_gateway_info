. ./sendgrid.env
rm gwDown.txt
cat ../result_pingall.txt | grep UNREACHABLE | grep -oP "gw." > gwDown.txt
python3 sendmail.py
