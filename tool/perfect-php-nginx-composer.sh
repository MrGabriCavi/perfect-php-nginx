#!/bin/bash

DOCKER_IMAGE=${1}
COMPOSER_COMMAND=${@:2}

docker run -i -v `pwd`:/var/www:delegated --rm -w /var/www --name perfect-php-nginx-composer ${DOCKER_IMAGE} ${COMPOSER_COMMAND}
