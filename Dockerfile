FROM ruby:2.7.2
COPY check_ps5_stock.rb /
COPY Gemfile /
WORKDIR /
USER root
RUN bundle install --path vendor/bundle
CMD bundle exec ruby -W0 check_ps5_stock.rb $token $user_key $sleep_time
