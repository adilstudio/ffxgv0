# Use the Ruby 2.7 image as a base
FROM ruby:2.7

# Set the working directory
WORKDIR /app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install the gems
RUN bundle install
# --without development test

# Copy the rest of the application code
COPY . .

# Set the default command to run the Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
