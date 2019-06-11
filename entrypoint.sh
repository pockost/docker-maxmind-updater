#!/bin/sh
set -e

echo "Configuring cron"
echo "${CRONTAB_FREQUENCY} /bin/sh /update-maxmind.sh" > /etc/crontabs/root

echo "First download"
/bin/sh /update-maxmind.sh

echo "Starting Cron..."
exec "$@"
