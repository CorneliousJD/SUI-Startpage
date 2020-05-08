FROM nginx:alpine
LABEL maintainer="Jeroen Pardon"

EXPOSE 80

RUN mkdir -p /usr/share/holding
COPY . /usr/share/holding

RUN chmod +x usr/share/holding/start.sh
ENTRYPOINT ["./usr/share/holding/start.sh"]
#CMD ["nginx", "-g", "daemon off;"]
