#!/bin/bash
service tor stop
service nginx stop
service tor start
service nginx start
while :
do
        echo Keep running
        echo "Press CTRL+C to exit"
        sleep 1
done
