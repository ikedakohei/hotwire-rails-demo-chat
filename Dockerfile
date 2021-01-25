FROM ruby:2.7.1

RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir -p /hotwire
WORKDIR /hotwire

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN gem install bundler
RUN bundle install
