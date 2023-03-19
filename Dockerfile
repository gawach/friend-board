FROM ruby:2.5.3

RUN apt-get update -qq \
 && apt-get install -y build-essential libpq-dev nodejs mysql-client --no-install-recommends \
 && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

EXPOSE 3000
