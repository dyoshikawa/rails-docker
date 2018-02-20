FROM ruby:alpine

RUN adduser -D -s /bin/sh -u 1000 dockeruser
RUN apk add -U sudo \
 && echo 'dockeruser ALL=(ALL:ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN gem install bundler
RUN apk add -U libxml2-dev libxslt-dev libstdc++ tzdata mariadb-client-libs nodejs ca-certificates \
               build-base mariadb-dev ruby-dev bash
RUN gem install rails
RUN rails new rails-pre -d mysql
RUN cd /rails-pre \
 && bundle install --path=vendor/bundle
RUN mkdir /rails-app
WORKDIR /rails-pre

ADD docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod 777 /docker-entrypoint.sh
ENTRYPOINT ["bash", "/docker-entrypoint.sh"]