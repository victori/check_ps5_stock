FROM ruby:2.7.2
COPY check_ps5_stock.rb /
COPY Gemfile /
COPY init.sh /
WORKDIR /
USER root
RUN bundle install --path vendor/bundle
CMD /init.sh
