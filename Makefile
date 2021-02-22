.PHONY: all run build fmt install

all: install fmt build run

run:
	@node dist/index.js
build:
	@yarn tsc
fmt:
	@yarn prettier . --write
install:
	@yarn install

test: install fmt build
	[ "$(shell make run)" == "Hello" ] || exit 1
