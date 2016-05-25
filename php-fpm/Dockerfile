FROM ubuntu:trusty

MAINTAINER James Mannion <mannion007@gmail.com>

RUN apt-get update && apt-get install -y php5-fpm php5-cli php5-apcu php5-intl php5-mysql php5-gd php5-mcrypt php5-xdebug

COPY conf/www.conf /etc/php5/fpm/pool.d/www.conf

ENTRYPOINT /usr/sbin/php5-fpm --nodaemonize

EXPOSE 9000