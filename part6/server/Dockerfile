FROM nginx

COPY server.c /
COPY start_server.sh /

RUN \
    apt-get update -y && \
    apt-get install -y gcc spawn-fcgi libfcgi-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    gcc server.c -l fcgi -o my_server && \
    chmod +x /start_server.sh && \
    chmod u-s  bin/umount && \
    chmod u-s  bin/mount && \
    chmod u-s  usr/bin/passwd && \
    chmod u-s  usr/bin/chfn && \
    chmod u-s  usr/bin/newgrp && \
    chmod u-s  usr/bin/gpasswd && \
    chmod u-s  bin/su && \
    chmod u-s  usr/bin/chsh && \
    chmod g-s  usr/bin/expiry && \
    chmod g-s  sbin/unix_chkpwd && \
    chmod g-s  usr/bin/wall && \
    chmod g-s  usr/bin/chage


HEALTHCHECK --interval=60s --timeout=10s --retries=3 CMD curl -f http://localhost/ || exit 1


ENTRYPOINT [ "bash", "start_server.sh" ]