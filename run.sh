#!/bin/bash

mkdir /backup

ssh-keyscan -p 2222 -H mud.mywire.org > ~/.ssh/known_hosts
ssh-keyscan -p 2222 -H fish.mywire.org >> ~/.ssh/known_hosts
ssh-keyscan -H vatkor.net >> ~/.ssh/known_hosts

while true; do
    # 복사
    scp -P 2222 -r root@mud.mywire.org:/root/love.tar.gz /backup 2>&1
    scp -P 2222 -r root@fish.mywire.org:/sepi/backup/backup.lib /backup 2>&1
    scp -r root@vatkor.net:/var/www/backup/db_backup.sql.gz /backup 2>&1

    # 24시간 대기 (초 단위: 86400초)
    sleep 86400
done
