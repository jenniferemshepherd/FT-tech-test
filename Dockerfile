FROM ruby:2.3.1-slim
MAINTAINER Jennifer Shepherd

RUN apt-get update -qq && apt-get install -y build-essential


ENV APP_ROOT /var/www/jsheps-tech-test
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT
ADD Gemfile* $APP_ROOT/
RUN bundle install
ADD . $APP_ROOT

EXPOSE 80
CMD ["bundle", "exec", "rackup", "config.ru", "-p", "80", "-s", "-o", "0.0.0.0"]
