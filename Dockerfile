FROM php:5.6-cli
MAINTAINER pierre@lbab.fr

RUN apt-get update && apt-get install cron;
RUN apt-get clean && rm -rf /tmp/* /var/tmp/* && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html
VOLUME /var/www/html
VOLUME /etc/cron.d

CMD /usr/sbin/cron -f
