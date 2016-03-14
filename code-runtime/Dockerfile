FROM php:5.6

# Install env
ADD sources.list    /etc/apt/sources.list
RUN apt-get update && apt-get install -y git && rm -r /var/lib/apt/lists/*

# Install Fe tools , node,gulp,grunt
RUN apt-get update && apt-get install -y \
        npm \
        ruby \
        ruby-full \
        && rm -r /var/lib/apt/lists/*

RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g grunt-cli && npm install -g gulp
RUN gem  install sass 

# PHP config
ADD php.ini    /usr/local/etc/php/php.ini

# Composer
ADD composer.phar /usr/local/bin/composer
RUN chmod 755 /usr/local/bin/composer

WORKDIR /opt

VOLUME ["/opt"]
