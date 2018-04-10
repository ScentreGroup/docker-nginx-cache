#!/bin/sh
set -e

if [ "${1}" = "nginx" ]; then
  sed -i -e "s/#CACHE_TTL#/${CACHE_TTL}/g" /etc/nginx/conf.d/default.conf
  sed -i -e "s/#HOST_TO_CACHE#/${HOST_TO_CACHE}/g" /etc/nginx/conf.d/default.conf

  echo "Caching: ${HOST_TO_CACHE}"
  echo "Cache TTL: ${REST_HOST}"
  echo "Starting nginx..."
fi
exec "$@"
