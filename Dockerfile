# Use the Ruby 2.7 image as a base
FROM ruby:2.7.0-alpine as builder

# Set the working directory
WORKDIR /ffxg

RUN gem install bundler -v 2.3.20 --no-document

# Set local timezone
RUN apk add --update tzdata

RUN --mount=type=cache,id=apk,sharing=locked,target=/etc/apk/cache \
  apk add build-base imagemagick-dev imagemagick git autoconf automake libtool pkgconfig

RUN apk --no-cache add git npm mariadb-dev nodejs yarn openjdk8-jre mysql-client curl python3 python3-dev py3-pip openssl build-base && \
  cp /usr/share/zoneinfo/Europe/Paris /etc/localtime && \
  echo "Europe/Paris" > /etc/timezone

RUN adduser -D bundler

USER root

RUN --mount=type=cache,target=/home/bundler/bundle,id=bundler \
  chown bundler: -R /home/bundler/bundle

USER bundler

# --without development test

COPY --chown=bundler:bundler . /ffxg/

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock /ffxg/
USER root
# Install the gems
RUN bundle install
EXPOSE 3000
RUN chown -R 1000:1000 /ffxg
