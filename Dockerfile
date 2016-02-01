FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q
RUN apt-get install -y \
  nginx \
  supervisor \
  php5-cli \
  curl \
  git \
  cron

# Nginx Configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Supervisor Configuration
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Satis
RUN composer create-project composer/satis --stability=dev --no-dev /satis
COPY satis.json /satis
RUN cd /satis && php bin/satis build satis.json /var/www/html

# Cron
COPY crontab /etc/cron.d/satis
RUN chmod 0644 /etc/cron.d/satis

EXPOSE 80

CMD ["/usr/bin/supervisord"]
