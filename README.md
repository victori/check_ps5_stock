# Check PS5 Stock

Simple ruby script to check various stores for PS5 stock availablity. Script relies on [pushover](http://pushover.net/) for stock notification

### How to build

1. Checkout this git repository

   `git clone https://github.com/victori/check_ps5_stock.git`

2. Build Docker image

   `make`

### How to run

`docker run -e token=myToken -e user_key=myKey -e sleep_time=1800 --rm victoriggy/check_ps5_stock`
