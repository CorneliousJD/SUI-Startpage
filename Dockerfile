FROM nginx:alpine
LABEL maintainer="Jeroen Pardon"

EXPOSE 80

RUN mkdir -p /usr/share/nginx/html
COPY . /usr/share/nginx/html
