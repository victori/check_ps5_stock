# Check PS5 Stock

Simple ruby script to check various stores for PS5 stock availablity. Script relies on [pushover](http://pushover.net/) for stock notification

[Docker Hub - check_ps5_stock](https://hub.docker.com/repository/docker/victoriggy/check_ps5_stock)

### How to build

1. Checkout this git repository

   `git clone https://github.com/victori/check_ps5_stock.git`

2. Build Docker image

   `make`

### Install from docker hub

   If you don't want to bother building you can pull from docker hub directly.

   `docker pull victoriggy/check_ps5_stock:latest`

### How to run

`docker run -e token=myToken -e user_key=myKey -e sleep_time=1800 --rm victoriggy/check_ps5_stock`
