FROM ruby:3.1.2-bullseye
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
build-essential curl git nodejs vim sqlite3

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

ADD rt.sh /usr/local/bin/rt
RUN chmod a+x /usr/local/bin/rt

RUN gem install rails -v '7.0.3.1'
RUN bundle install
