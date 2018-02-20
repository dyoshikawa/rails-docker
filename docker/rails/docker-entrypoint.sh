#!/usr/bin/env bash
if [ -f Gemfile ]; then
    rm -rf /rails-pre
    bundle install
    bundle update
else
    shopt -s dotglob
    mv /rails-pre/* /rails-app/
    rmdir /rails-pre
fi
chown -R 1000:1000 /rails-app
rails s -b 0.0.0.0