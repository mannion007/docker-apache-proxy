FROM ubuntu:trusty

MAINTAINER James Mannion <mannion007@gmail.com>

RUN apt-get update

RUN apt-get install -y apache2 php5-fpm php5-apcu php5-intl php5-mcrypt php5-xdebug git nano

RUN echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/servername.conf
RUN a2enconf servername

COPY conf/000-default.conf /etc/apache2/sites-available/000-default.conf

COPY conf/www.conf /etc/php5/fpm/pool.d/www.conf

RUN a2enmod proxy_http
RUN a2enmod proxy_fcgi
#RUN a2enmod proxy

RUN service php5-fpm start

CMD /usr/sbin/apache2ctl -k start -D FOREGROUND

EXPOSE 80
EXPOSE 443