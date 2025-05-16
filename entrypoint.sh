#!/bin/bash
set -e

# Run migrations and seed the DB
bundle exec rails db:prepare
bundle exec rails db:seed

exec "$@"
