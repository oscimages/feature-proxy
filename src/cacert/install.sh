#!/bin/sh
set -e

echo "Activating feature 'cacert'"

touch /cacerttest

if [ "${https_proxy}" = "${PROXY}" ]
then
    curl ${CACRT} -o ${CAFILE}
    bbasename ${CAFILE} >> /etc/ca-certificates.conf
    update-ca-certificates
else
    echo https_proxy is not set.
fi
