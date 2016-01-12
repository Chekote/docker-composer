FROM chekote/php:7-cli

# Install composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

VOLUME ["/data"]
WORKDIR /data

CMD ["composer", "install"]
