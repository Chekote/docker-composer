FROM chekote/php:7.0.2

RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y php7.0-curl && \

# Install composer
    curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

VOLUME ["/data"]
WORKDIR /data

CMD ["composer", "install"]
