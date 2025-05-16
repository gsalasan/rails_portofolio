FROM ruby:3.2.2

# Set working directory
WORKDIR /app

# Install OS dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# Copy Gemfiles and install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy entire app
COPY . .

# Precompile assets
RUN bundle exec rake assets:precompile

# Expose port
EXPOSE 3000

# Run the server
CMD ["rails", "server", "-b", "0.0.0.0"]


RUN chmod +x /usr/bin/entrypoint.sh

COPY entrypoint.sh /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]