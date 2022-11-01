FROM alpine

WORKDIR /home/app

COPY build/mysql-socket5-proxy /home/app/mysql-socket5-proxy
COPY config.json /home/app/config.json.sample

ENTRYPOINT ["/home/app/mysql-socket5-proxy"]
