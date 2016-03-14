FROM php:5.6

# Install env
ADD sources.list    /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
        libgearman-dev \
        libmemcached-dev \
        libmcrypt-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng12-dev \
        && rm -r /var/lib/apt/lists/*


# Install PHP extensions
COPY memcached.tgz /home/memcached.tgz
COPY gearman.tgz /home/gearman.tgz
COPY redis.tgz /home/redis.tgz
COPY msgpack.tgz /home/msgpack.tgz
COPY memcache.tgz /home/memcache.tgz

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
        && docker-php-ext-install zip \
        && docker-php-ext-install gd \
        && docker-php-ext-install mbstring \
        && docker-php-ext-install mcrypt \
        && docker-php-ext-install pdo_mysql \
        && docker-php-ext-install curl
RUN pecl install /home/memcached.tgz && echo "extension=memcached.so" > /usr/local/etc/php/conf.d/memcached.ini \
        && pecl install /home/gearman.tgz && echo "extension=gearman.so" > /usr/local/etc/php/conf.d/gearman.ini \
        && pecl install /home/redis.tgz && echo "extension=redis.so" > /usr/local/etc/php/conf.d/redis.ini \
        && pecl install /home/msgpack.tgz && echo "extension=msgpack.so" > /usr/local/etc/php/conf.d/msgpack.ini \
        && pecl install /home/memcache.tgz && echo "extension=memcache.so" > /usr/local/etc/php/conf.d/memcache.ini \

# PHP config
ADD php.ini    /usr/local/etc/php/php.ini

WORKDIR /opt

VOLUME ["/opt"]
