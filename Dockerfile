FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y --no-install-recommends git curl wget ca-certificates ssh lsof net-tools &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &&\
    update-ca-certificates
COPY wait-for-it.sh /usr/local/bin/wait-for-it.sh
RUN chmod +x /usr/local/bin/wait-for-it.sh
COPY install-docker.sh /usr/local/bin
RUN chmod +x /usr/local/bin/install-docker.sh
RUN install-docker.sh
