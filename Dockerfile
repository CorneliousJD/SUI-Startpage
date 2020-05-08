FROM nginx:alpine
LABEL maintainer="Jeroen Pardon"

EXPOSE 80

RUN apk add nano

#RUN rm -rf /usr/share/nginx/html
#COPY . /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
COPY . .
