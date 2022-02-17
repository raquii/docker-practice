FROM ruby:2.6.9 AS base

RUN apt-get update

# dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# copy app files over
COPY . ./

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "9292"]