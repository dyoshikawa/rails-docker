FROM ruby:alpine

# install bash
RUN apk add -U bash

# install bundler
RUN gem install bundler

# install rails
RUN apk add libxml2-dev libxslt-dev libstdc++ tzdata mariadb-client-libs nodejs ca-certificates \
            build-base mariadb-dev ruby-dev
RUN gem install rails --no-rdoc --no-ri

# create rails project
RUN rails new rails-app -d mysql --skip-bundle
WORKDIR /rails-app
RUN cp -R /rails-app /rails-pre

# setup entrypoint
ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

EXPOSE 3000