FROM alpine

COPY build/mysql-socket5-proxy /usr/bin/mysql-socket5-proxy
RUN chmod +x /usr/bin/mysql-socket5-proxy
COPY config.json /etc/mysql-socket5-proxy/config.json.sample

VOLUME /etc/mysql-socket5-proxy

ENTRYPOINT ["/usr/bin/mysql-socket5-proxy", "-c",  "/etc/mysql-socket5-proxy/config.json"]
