#!/bin/bash

mkdir -p /script1

cd /script1

touch script1_{0001..0100}

for x in script1_{0001..0100}
do
echo "nginx-01.com" > $x
done


for x in `find /script1/ -name "script1_*" -type f`; do sed 's/nginx-01.com/nginx-02.com/' $x > tmp ; cat tmp > $x; done
rm tmp
