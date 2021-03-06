#!/bin/sh
set -e

if [ "${1}" = "nginx" ]; then
  sed -i -e "s/#CACHE_TTL#/${CACHE_TTL}/g" /etc/nginx/conf.d/default.conf
  sed -i -e "s/#CACHE_LOCK_TIMEOUT#/${CACHE_LOCK_TIMEOUT}/g" /etc/nginx/conf.d/default.conf
  sed -i -e "s/#HOST_TO_CACHE#/${HOST_TO_CACHE}/g" /etc/nginx/conf.d/default.conf
fi

exec "$@"
