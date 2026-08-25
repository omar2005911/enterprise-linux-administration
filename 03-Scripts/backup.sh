#! /usr/bin/bash
echo "============================="
echo "         BACKUP WWW          "
echo "============================="
if tar -czf /www-backup/backup1-$(date +%F).tar.gz /var/www
then
        echo "backup successful"
else
        echo "backup faild"
fi
echo "============ FINISH =========="
~                                        
