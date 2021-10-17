#!/usr/bin/env bash

docker run \
  --name apache \
  --hostname apache \
  --publish 80:80 \
  --volume html:/var/www/html \
  --detach \
  php-apache:latest