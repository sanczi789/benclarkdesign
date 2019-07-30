FROM ruby:2.5-alpine

RUN apk add --no-cache \
  tzdata \
  busybox \
  ca-certificates \
  curl \
  imagemagick \
  libsodium-dev \
  postgresql-dev \
  postgresql-client \
  nodejs \
  rsync

ENV CA_CERTS_PATH /etc/ssl/certs

RUN mkdir -p /app
WORKDIR /app

ADD . /app

EXPOSE 3000

ENV RAILS_ENV production
ENV RAILS_SERVE_STATIC_FILES true
ENV RAILS_LOG_TO_STDOUT true
ENV BUNDLE_APP_CONFIG /app/.bundle

LABEL traefik.docker.network=web traefik.enable=true traefik.port=3000 traefik.default.protocol=http router.healthcheck=/ router.idletime=30m

CMD ["bin/puma", "-C", "config/puma.rb"]
