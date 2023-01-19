#!/bin/bash

scriptdir=$(dirname $0)
router_number=2

for i in $(seq 1 $router_number)
do
    echo "Starting router $i with hardware file $scriptdir/r$i-hw.txt and software file $scriptdir/r$i-sw.txt"
    nohup java -jar $scriptdir/rtr.jar routersc r${i}-hw.txt r${i}-sw.txt > Output.out 2> Error.err < /dev/null &
done
