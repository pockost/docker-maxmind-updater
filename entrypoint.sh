#!/bin/sh
set -e

echo "Configuring cron"
echo "${CRONTAB_FREQUENCY} /bin/sh /update-maxmind.sh" > /etc/crontabs/root

echo "Starting Cron..."
exec "$@"
