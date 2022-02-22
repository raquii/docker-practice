#!/bin/bash
set -e

bundle exec rake db:prepare
bundle exec rackup --host 0.0.0.0 -p 9292

exec "$@"