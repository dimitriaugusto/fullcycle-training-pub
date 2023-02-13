FROM nginx:latest

WORKDIR /app

RUN apt update && \
    apt install vim -y

COPY html/ /usr/share/nginx/html/

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]