#!/bin/sh
# if index.html doesn't exist yet copy all files
if [ ! -f /usr/share/nginx/html/index.html ]; then
  cp . /usr/share/nginx/html
fi
