#!/bin/bash

mkdir /backup

while true; do
    # 복사
    scp -r root@mud.mywire.org:/root/love.tar.gz /backup 2>&1

    # 24시간 대기 (초 단위: 86400초)
    sleep 10
done
