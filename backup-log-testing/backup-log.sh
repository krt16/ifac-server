#!/bin/bash
rsync -avzh /var/log /bsa/backup
cd /bsa/backup/
zip -r $(date +%Y%m%d)-log.zip log
mv $(date +%Y%m%d)-log.zip /mnt/infra/backuplogsservertesting
rm -rf log
exit 0

