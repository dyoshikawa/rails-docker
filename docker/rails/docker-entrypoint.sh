#!/usr/bin/env bash
if [ -f Gemfile ]; then
    sudo rm -rf /rails-pre
else
    sudo mv /rails-pre/* /rails-app/
    sudo mv /rails-pre/.?** /rails-app/
    sudo rmdir /rails-pre
fi
sudo bundle install --path=vendor/bundle
sudo bundle install --binstubs
sudo chown -R 1000:1000 /rails-app
rails s -b 0.0.0.0