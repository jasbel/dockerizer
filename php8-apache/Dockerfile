FROM php:8.2-apache

ENV APACHE_DOCUMENT_ROOT /var/www/html/apps/backoffice/backend/public

# Copy the custom Apache configuration
COPY custom-apache.conf /etc/apache2/sites-available/000-default.conf

# ENV APACHE_DOCUMENT_ROOT /apps/backoffice/backend/public
# RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
# RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf


# RUN echo "ServerName local.dev" >> /etc/apache2/apache2.conf

# RUN apt-get update && \
#   apt-get install -y --no-install-recommends \
#     git \
#     # ZIP
#     libzip-dev \
#     zip \
#     # GD
#     libfreetype6-dev \
#     libpng-dev  \
#     libjpeg62-turbo-dev \
#     # INTL
#     libicu-dev && \
#     # COMPOSER
#     curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
#     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# RUN docker-php-ext-configure gd \
#         --with-gd \
#         --with-freetype-dir=/usr/include/ \
#         --with-png-dir=/usr/include/ \
#         --with-jpeg-dir=/usr/include/ && \
#       docker-php-ext-configure intl && \
#       docker-php-ext-install -j$(nproc) \
#         gd \
#         intl \
#         pdo_mysql \
#         opcache \
#         zip

# # APCU
# RUN pecl install apcu && docker-php-ext-enable apcu

# # XDEBUG
# # RUN pecl install xdebug && docker-php-ext-enable xdebug

# # APACHE
# RUN a2enmod rewrite

# # COPY php.ini /usr/local/etc/php/php.ini

# WORKDIR /var/www/app/