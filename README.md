Supported tags and respective Dockerfile links
==============================================
1, latest ([docker-maxmind-updater/1/Dockerfile](https://github.com/pockost/docker-maxmind-updater/blob/master/1/Dockerfile))

A maxmind updater image
=======================

This image is a alpine based image which will download on specified interval the latest version of the maxmin geoip database.

Usage
=====

    docker run -d -v /somewhere/to/store/database:/database pockost/maxmind-updater

Environment variables
=====================


| Environment variable | Default value | Description |
| -------------------- | ------------- | ----------- |
| CRONTAB_FREQUENCY | 0 0 * * 1 | The cron frequency to download new database |
| PRODUCT_IDS | GeoLite2-City GeoLite2-Country GeoLite2-ASN | The list of Maxmind GeoIP's product IDs to update separated by space |
| DB_DEST | /database | Where Maxmind database will be stored |
| TMP_FOLDER | /tmp | Where temporary file wil be stored |


Database will be stored in `/database/` folder.
