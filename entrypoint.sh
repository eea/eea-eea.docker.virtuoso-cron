#!/bin/bash

echo "SHELL=/bin/bash" > /etc/cron.d/virtuoso-cron
echo "PATH=/sbin:/bin:/usr/sbin:/usr/bin" >> /etc/cron.d/virtuoso-cron
echo "MAILTO=root" >> /etc/cron.d/virtuoso-cron

echo "$CRONTAB" >> /etc/cron.d/virtuoso-cron
chmod 0644 /etc/cron.d/virtuoso-cron
crontab /etc/cron.d/virtuoso-cron

exec "$@"
