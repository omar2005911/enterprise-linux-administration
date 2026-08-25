#! /usr/bin/bash 
echo "=========================="
echo "       SERVICES STATUS    "
echo "=========================="
services=("httpd" "firewalld" "sshd")
for service in "${services[@]}"
do
        if systemctl is-active --quiet "$service"
        then
                echo "$service is OK"
        else
                echo "$service is CRITICAL"
        fi
done
echo "=========================="
echo "     PORTS INFORMATION   "
echo "========================="

echo "=== check http port ==="
if ss -lnt |grep -q "80"
then
        echo "http 80 : is listening"
else
        echo "http 80  :is not listening"
fi
echo "====CHECK HTTPS PORT====="
if ss -lnt |grep -q "443"
then
        echo "HTTPS port 443 is : lestening"
else
        echo "HTTPS port 443 is : not lestening"
fi
echo "=========================="
echo "    CHECK HTTP RESPOND   "
echo "=========================="
if curl -s --fail http://localhost >/dev/null
then
        echo "HTTP respond : OK"
else
        echo "HTTP respond : FAILED"
fi

echo "=========================="
echo "    MONITORING COMPLETED " 
echo "========================="
