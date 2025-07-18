#!/bin/bash

echo "=== Renewing SSL certificates ==="

docker compose run --rm certbot renew --webroot -w /var/www/certbot

echo "=== Reloading NGINX ==="
docker compose exec nginx nginx -s reload
