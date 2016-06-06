FROM ubuntu:trusty

MAINTAINER James Mannion <mannion007@gmail.com>

RUN apt-get update && apt-get install -y apache2 git nano

RUN echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/servername.conf

COPY conf/000-default.conf /etc/apache2/sites-available/000-default.conf

RUN a2enconf servername && a2enmod env && a2enmod proxy && a2enmod proxy_http && a2enmod proxy_fcgi && a2enmod socache_shmcb

ADD conf/run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 80

CMD ["/run.sh"]