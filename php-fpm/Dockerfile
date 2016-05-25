FROM ubuntu:trusty

MAINTAINER James Mannion <mannion007@gmail.com>

RUN apt-get update

RUN apt-get install -y php5-fpm php5-cli php5-apcu php5-intl php5-mcrypt php5-xdebug

COPY conf/www.conf /etc/php5/fpm/pool.d/www.conf

#CMD ["php5-fpm"]

CMD /usr/sbin/php5-fpm FOREGROUND

ENTRYPOINT /usr/sbin/php5-fpm --nodaemonize

EXPOSE 9000