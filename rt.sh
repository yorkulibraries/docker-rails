#!/bin/bash 

cd /app && RAILS_ENV=test DATABASE_URL=$TEST_DATABASE_URL bundle exec rake db:reset && RAILS_ENV=test DATABASE_URL=$TEST_DATABASE_URL bundle exec rails test -v $@
