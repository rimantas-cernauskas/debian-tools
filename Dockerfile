FROM debian:10
WORKDIR /root
RUN apt-get update -y && \
    apt-get install -y curl wget dnsutils telnet && \
    wget -q https://downloads.mongodb.org/linux/mongodb-shell-linux-x86_64-debian10-4.4.1.tgz && \
    tar zxf mongodb-shell-linux-x86_64-debian10-4.4.1.tgz && \
    mv mongodb-linux-x86_64-debian10-4.4.1/bin/mongo /usr/local/bin/mongo && \
    chmod a+x /usr/local/bin/mongo && \
    rm -rf mongodb*
