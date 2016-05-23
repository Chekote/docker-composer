FROM chekote/php:5-cli

# Install packages
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y git && \
    apt-get install -y php5-curl && \
    apt-get install -y php5-mcrypt && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \

    # Install composer
    curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

VOLUME ["/data"]
WORKDIR /data

ENTRYPOINT ["/bin/bash", "-c"]
