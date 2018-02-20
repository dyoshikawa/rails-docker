#!/usr/bin/env bash
if [ -f Gemfile ]; then
    sudo rm -rf /rails-pre
else
    sudo mv /rails-pre/* /rails-app/
    sudo mv /rails-pre/.?** /rails-app/
    sudo rmdir /rails-pre
fi
sudo bundle install --path=vendor/bundle
sudo bin/rails app:update:bin
sudo bundle exec rails s -p 3000 -b '0.0.0.0'