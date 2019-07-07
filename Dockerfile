FROM certbot/dns-cloudflare

ENV VERSION 0.7.3
ENV DOWNLOAD_URL https://github.com/jwilder/docker-gen/releases/download/$VERSION/docker-gen-alpine-linux-amd64-$VERSION.tar.gz
ENV DOCKER_HOST unix:///tmp/docker.sock

RUN wget -qO- $DOWNLOAD_URL | tar xvz -C /usr/local/bin

RUN mkdir /certbot/

ADD notify.sh /certbot/notify.sh
ADD certbot.sh.tmpl /certbot/certbot.sh.tmpl

VOLUME /etc/letsencrypt

ENTRYPOINT ["/usr/local/bin/docker-gen"]
#ENTRYPOINT [ "/bin/sh" ]