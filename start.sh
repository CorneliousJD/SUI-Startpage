#!/bin/sh

#check for existing index.html file, if exists leave all alone, otherise copy default files.
if [ ! -f /usr/share/nginx/html/index.html ]; then
cp /usr/share/holding/*.* /usr/share/nginx/html
cp -R /usr/share/holding/assets /usr/share/nginx/html
fi

#check for favicon and copy it in if it doesn't exist
if [ ! -f /usr/share/nginx/html/favicon.ico ]; then
cp /usr/share/holding/favicon.ico /usr/share/nginx/html/favicon.ico
fi

#remove uncessary files
if [ ! -f /usr/share/nginx/html/License.md ]; then
rm /usr/share/nginx/html/License.md
fi
if [ ! -f rm /usr/share/nginx/html/README.md ]; then
rm /usr/share/nginx/html/README.md
fi
if [ ! -f rm rm /usr/share/nginx/html/start.sh ]; then
rm /usr/share/nginx/html/start.sh
fi

#chmod web files to be executable
chmod -R 777 /usr/share/nginx/html

#run nginx
nginx -g "daemon off;"
