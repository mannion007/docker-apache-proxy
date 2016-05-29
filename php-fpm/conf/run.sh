#!/bin/bash
/usr/sbin/php5-fpm --nodaemonize & tail -f /tmp/xdebug.log