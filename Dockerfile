FROM ruby:2.5
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /product2-register
COPY Gemfile Gemfile.lock /product2-register/
RUN bundle install