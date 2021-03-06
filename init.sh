#!/bin/sh

echo "Starting Stock Check!"
bundle exec ruby -W0 check_ps5_stock.rb $token $user_key $sleep_time
