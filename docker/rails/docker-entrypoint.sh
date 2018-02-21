#!/usr/bin/env bash
if [ -f Gemfile ]; then
    rm -rf /rails-pre
else
    mv /rails-pre/* /rails-app/
    mv /rails-pre/.?** /rails-app/
    rmdir /rails-pre
fi
bundle install --path=vendor/bundle --jobs=4
bundle exec rails s -p 3000 -b '0.0.0.0'