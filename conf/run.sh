#!/bin/bash
source /etc/apache2/envvars
tail -f /var/log/apache2/* & exec apache2ctl -D FOREGROUND