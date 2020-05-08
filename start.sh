#!/bin/sh
#check for existing index.html file, if exists leave alone, otherise copy default files.
if [ ! -f /usr/share/nginx/html/index.html ]; then
cp /usr/share/holding/*.* /usr/share/nginx/html
cp -R /usr/share/holding/assets /usr/share/nginx/html
fi
#run nginx
nginx -g "daemon off;"
