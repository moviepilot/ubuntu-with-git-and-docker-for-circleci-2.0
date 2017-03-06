FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y --no-install-recommends git curl wget ca-certificates ssh netstat &&\
    apt-get clean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &&\
    update-ca-certificates
COPY install-docker.sh /usr/local/bin
RUN chmod +x /usr/local/bin/install-docker.sh
RUN install-docker.sh
