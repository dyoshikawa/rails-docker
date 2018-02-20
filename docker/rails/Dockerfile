FROM ruby:alpine

RUN gem install bundler
RUN apk add -U libxml2-dev libxslt-dev libstdc++ tzdata mariadb-client-libs nodejs ca-certificates \
               build-base mariadb-dev
RUN gem install rails
RUN rails new rails-pre -d mysql
RUN cd /rails-pre \
 && bundle install --path=vendor/bundle
RUN mkdir rails

ENTRYPOINT ["bash", "docker-entrypoint.sh"]