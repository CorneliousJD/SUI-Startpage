#!/bin/sh
# if index.html doesn't exist yet copy all files
if [ ! -f /usr/share/nginx/html/index.html ]; then
  cp -r /usr/share/holding /usr/share/nginx/html
fi
