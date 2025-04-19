# Use Ruby 2.7.8 base image
FROM ruby:2.7

# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs default-mysql-client

# Set working directory
WORKDIR /ezInfra

# Copy Gemfile and install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install

# Copy project files
COPY . .

# Precompile assets and prepare DB (optional)
# RUN bundle exec rake assets:precompile
# RUN bundle exec rake db:migrate

# Expose port
EXPOSE 3000

# Start server
CMD ["rails", "server", "-b", "0.0.0.0"]
