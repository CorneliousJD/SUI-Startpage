FROM nginx:alpine
LABEL maintainer="Jeroen Pardon"

EXPOSE 80
COPY . /

RUN chmod +x start.sh
ENTRYPOINT ["./start.sh"]
