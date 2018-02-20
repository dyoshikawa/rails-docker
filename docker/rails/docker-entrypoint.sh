#!/usr/bin/env bash
#if [ -f Gemfile ]; then
#    rm -rf /rails-pre
#    bundle install
#    bundle update
#else
#    mv /rails-pre/* /rails-app/
#    mv /rails-pre/.?** /rails-app/
#    rmdir /rails-pre
#fi
rails s -b 0.0.0.0