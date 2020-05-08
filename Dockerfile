FROM nginx:alpine
LABEL maintainer="Jeroen Pardon"

EXPOSE 80

VOLUME /usr/share/nginx/html
COPY . /usr/share/nginx/html
