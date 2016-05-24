FROM ubuntu:trusty

MAINTAINER James Mannion <mannion007@gmail.com>

RUN apt-get update

RUN apt-get install -y apache2 git nano

RUN echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/servername.conf
RUN a2enconf servername

COPY conf/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN a2enmod proxy_http
RUN a2enmod proxy_fcgi

CMD /usr/sbin/apache2ctl -k start -D FOREGROUND

EXPOSE 80
EXPOSE 443