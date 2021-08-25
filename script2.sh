#!/bin/bash

mkdir -p /script2

cd /script2


for i in {1..10}
do
   touch $(date +%T)_$i
done

#In the crontab file I will set the following schedule  0 */6 * * * to start script every 6 hours


