#!/bin/sh

#check for existing index.html file, if exists leave alone, otherise copy default files.
if [ ! -f /usr/share/nginx/html/index.html ]; then
cp /usr/share/holding/*.* /usr/share/nginx/html
cp -R /usr/share/holding/assets /usr/share/nginx/html
fi

#remove uncessary files
rm /usr/share/nginx/html/License.md
rm /usr/share/nginx/html/README.md
rm /usr/share/nginx/html/start.sh

#chmod web files to be executable
chmod -R 777 /usr/share/nginx/html

#run nginx
nginx -g "daemon off;"
