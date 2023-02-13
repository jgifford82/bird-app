#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
# bundle exec rake assets:precompile # These lines are commented out because we have an API only app
# bundle exec rake assets:clean
bundle exec rake db:migrate 

# If we keep the seed command in the script, it will re-seed the data every time we push up a change, resulting in duplicate records.
# bundle exec rake db:seed 