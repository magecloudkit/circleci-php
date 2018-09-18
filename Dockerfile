FROM circleci/php:7.0-cli-node-browsers

RUN sudo apt-get install -y libfreetype6-dev libicu-dev libjpeg62-turbo-dev libmcrypt-dev libpng-dev libxslt1-dev \
    && sudo docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && sudo docker-php-ext-install bcmath gd intl mbstring mcrypt opcache pdo_mysql soap xsl zip \
    && echo "memory_limit = 2G" | sudo tee $PHP_INI_DIR/conf.d/memory.ini
