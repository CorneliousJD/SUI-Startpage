FROM nginx:alpine
LABEL maintainer="Jeroen Pardon"

EXPOSE 80
RUN mkdir /usr/share/nginx/html
COPY . /usr/share/nginx/html
ADD . /usr/share/nginx/html
