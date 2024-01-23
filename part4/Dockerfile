FROM nginx

COPY nginx.conf /etc/nginx/
COPY server/server.c /
COPY start_server.sh /

RUN \
    apt-get update -y && \
    apt-get install -y gcc spawn-fcgi libfcgi-dev && \
    gcc server.c -l fcgi -o my_server && \
    chmod +x /start_server.sh


ENTRYPOINT [ "bash", "start_server.sh" ]