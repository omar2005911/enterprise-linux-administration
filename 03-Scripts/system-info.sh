#! /usr/bin/bash 
echo "========================================"

echo "========================================"
echo "============= HOST INFO ================"
echo "the host name is : $(hostname)"
echo "the system load is : $(uptime)"
echo "the memory & swap usage is :"
free -h
echo "the web site size is : $(du -sh /var/www/omar-site)"
echo "=========== CPU UTILIZATION ============"
ps -aux --sort=-%cpu |head -6
echo "========== MEMORY UTILIZATION =========="
ps -aux --sort=-%mem |head -6
echo "======= DISPLAY HTTPD STATUS ========="
systemctl is-active httpd
echo "======= display os release =========="
cat /etc/os-release
echo "========= KERNEL INFO ==============="
uname -r
echo "========== DISK INFO ==============="
df -h
echo "=========== LISTENING PORTS ========="
ss -lnt
echo "======SELINUX CURRENT  MODE========="
getenforce
echo "======================================"
echo "            REPORT COMPLETED          "
echo "======================================"

