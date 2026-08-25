#! /usr/bin/bash 
echo "========================="
echo "     WEB ACCESS LOGS     "
echo "========================="
echo "= THE LAST 10 REQUESTS ="
tail  -10 /var/log/httpd/access_log
echo "========================="
echo "==LAST 10 ERRORS="
tail -10 /var/log/httpd/error_log
echo "======= 404 ERRORS ======"
tail /var/log/httpd/access_log |grep "404"
echo "======= HTTPD JOURNAL ==="
journalctl -u httpd --no-pager
echo "==== TOP CLIENT IPs===="
cat /var/log/httpd/access_log  |awk '{print $1}' |sort |uniq -c |sort -nr | head -10
echo "========================"
echo "          FINISH        "
echo "========================"
