all: compile

compile:
	docker build -t victori/check_ps5_stock .

clean:
	rm -rf vendor
