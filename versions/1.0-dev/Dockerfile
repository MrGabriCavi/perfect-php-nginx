FROM mrgabri/perfect-php-nginx:1.0

RUN apk add --no-cache \
    git \
    openssh \
    php8-xdebug

# Configure nginx
COPY config/nginx/nginx.conf /etc/nginx/nginx.conf

# Configure PHP-FPM
COPY config/php/fpm-pool.conf /etc/php8/php-fpm.d/www.conf
COPY config/php/php.ini /etc/php8/conf.d/custom.ini

# Configure supervisord
COPY config/supervisord/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose the port nginx is reachable on
EXPOSE 8000

# Let supervisord start nginx & php-fpm
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]