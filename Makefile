all: compile

compile:
	docker build -t victoriggy/check_ps5_stock .

clean:
	rm -rf vendor
