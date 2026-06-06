FROM ruby:3.3
RUN apt-get update -qq && apt-get install -y \
 --no-install-recommends nodejs postgresql-client && \
 rm -rf /var/lib/apt/lists
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install
COPY . .
# Compile assets (ensure SECRET_KEY_BASE is set during build if required)
RUN SECRET_KEY_BASE=dummy bundle exec rails assets:precompile
EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]