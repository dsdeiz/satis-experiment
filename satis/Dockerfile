FROM composer/composer

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q \
  && apt-get install -y \
  git

RUN composer create-project composer/satis --stability=dev --no-dev /satis

CMD ["-"]
ENTRYPOINT ["/satis/bin/satis"]
