FROM composer/composer:base

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install cron -y

ADD crontab /etc/cron.d/satis

ENTRYPOINT []
 
# Run the command on container startup
CMD cron -f
