#!/bin/bash
service tor stop
service nginx stop
service tor start
service nginx start
echo "your onion darkwebsite link is:"
cat /var/lib/tor/hidden_service/hostname