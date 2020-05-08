#!/bin/sh
if [ ! -f /usr/share/nginx/html/index.html ]; then
cp -r /usr/share/holding /usr/share/nginx/html
fi
