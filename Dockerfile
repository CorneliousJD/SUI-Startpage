FROM nginx:alpine
LABEL maintainer="Jeroen Pardon"

EXPOSE 80
COPY . /usr/share/nginx/html
