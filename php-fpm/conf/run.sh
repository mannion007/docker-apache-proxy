#!/bin/bash
tail -f /var/log/php5-fpm.log & /usr/sbin/php5-fpm.log --nodaemonize