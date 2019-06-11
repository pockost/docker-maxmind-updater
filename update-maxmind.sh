#!/bin/sh

mkdir -p ${DB_DEST}
mkdir -p ${TMP_FOLDER}

cd $TMP_FOLDER
for PRODUCT_ID in ${PRODUCT_IDS}
do
	echo $PRODUCT_ID
	curl https://geolite.maxmind.com/download/geoip/database/${PRODUCT_ID}.tar.gz > ${TMP_FOLDER}/data.tgz
	tar xf data.tgz
	mv ${PRODUCT_ID}*/${PRODUCT_ID}.mmdb $DB_DEST
	rm -r ${PRODUCT_ID}*
	rm data.tgz
done
