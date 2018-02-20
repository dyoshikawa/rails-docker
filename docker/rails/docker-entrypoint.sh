#!/usr/bin/env bash
if [ -f Gemfile ]; then
    sudo rm -rf /rails-pre
    bundle install
    bundle update
else
    sudo shopt -s dotglob
    sudo mv /rails-pre/* /rails-app/
    sudo rmdir /rails-pre
fi
sudo chown -R 1000:1000 /rails-app
rails s -b 0.0.0.0