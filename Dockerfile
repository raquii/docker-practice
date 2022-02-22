FROM ruby:2.6.9 AS base

RUN apt-get update && apt-get install -y postgresql-client

# dependencies
COPY Gemfile Gemfile.lock ./
RUN bundle install

# copy app files over
COPY . ./

COPY bin/entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 9292

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "9292"]