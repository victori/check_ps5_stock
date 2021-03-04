#!/bin/env ruby

require 'open-uri'
require 'pushover'

STORES = {}
STORES['https://www.amazon.com/PlayStation-5-Console/dp/B08FC5L3RG'] = 'Currently unavailable'
STORES['https://www.walmart.com/ip/PlayStation5-Console/363472942'] = 'out of stock'
STORES['https://www.gamestop.com/video-games/playstation-5/consoles/products/playstation-5/11108140.html'] = 'NOT AVAILABLE'
STORES['https://direct.playstation.com/en-us/consoles/console/playstation5-digital-edition-console.3005817'] = 'Out of Stock'

loop do
  STORES.each do |url,txt|
    resp = open(url, 'User-Agent' => 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36 OPR/38.0.2220.41').read
    unless resp.downcase =~ /#{txt.downcase}/i
      puts "#{url} in stock at #{Time.now}!"
      # https://pushover.net
      message = Pushover::Message.new(token: ARGV[0], user: ARGV[1], message: "#{url} in stock at #{Time.now}")
      message.push
    end
  end
  sleep ARGV[2]
end

