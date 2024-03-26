#!/bin/bash 

cd /app && RAILS_ENV=test DATABASE_URL=sqlite3:db/test.sqlite3 bundle exec rake test $@
