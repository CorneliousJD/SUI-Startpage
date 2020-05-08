FROM nginx:alpine
LABEL maintainer="Jeroen Pardon"

EXPOSE 80

RUN mkdir -p /usr/share/holding
COPY . /usr/share/holding
