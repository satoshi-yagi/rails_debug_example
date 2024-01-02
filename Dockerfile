FROM ruby:2.6.8

RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /app
WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN gem install bundler -v "$(grep -A 1 "BUNDLED WITH" Gemfile.lock | tail -n 1)" && bundle install
COPY . /app
ENTRYPOINT ["./entrypoint.sh"]
