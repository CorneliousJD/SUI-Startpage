#!/bin/sh
if [ ! -f /usr/share/nginx/html/index.html ]; then
cp /usr/share/holding/*.* /usr/share/nginx/html
cp /usr/share/holding/assets /usr/share/nginx/html
fi
nginx -g "daemon off;"
