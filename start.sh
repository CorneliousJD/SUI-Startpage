#!/bin/sh

#check for existing files, copy them into place if needed.
if [ ! -f /usr/share/nginx/html/index.html ]; then
cp /usr/share/holding/index.html /usr/share/nginx/html/index.html
fi

if [ ! -f /usr/share/nginx/html/apps.json ]; then
cp /usr/share/holding/apps.json /usr/share/nginx/html/apps.json
fi

if [ ! -f /usr/share/nginx/html/links.json ]; then
cp /usr/share/holding/links.json /usr/share/nginx/html/links.json
fi

if [ ! -f /usr/share/nginx/html/providers.json ]; then
cp /usr/share/holding/providers.json /usr/share/nginx/html/providers.json
fi

if [ ! -f /usr/share/nginx/html/favicon.ico ]; then
cp /usr/share/holding/favicon.ico /usr/share/nginx/html/favicon.ico
fi

#Check assets folder, copy it in if it doesn't exist.
if [ ! -d /usr/share/nginx/html/assets ]; then
cp -R /usr/share/holding/assets /usr/share/nginx/html
fi

#remove uncessary files
if [ -f /usr/share/nginx/html/License.md ]; then
rm /usr/share/nginx/html/License.md
fi
if [ -f /usr/share/nginx/html/README.md ]; then
rm /usr/share/nginx/html/README.md
fi
if [ -f /usr/share/nginx/html/start.sh ]; then
rm /usr/share/nginx/html/start.sh
fi

#chmod web files to be executable
chmod -R 777 /usr/share/nginx/html

#run nginx
nginx -g "daemon off;"
