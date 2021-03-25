.PHONY: all run build fmt install

all: install fmt build run

run:
	@node dist/index.js
build:
	@npx tsc
fmt:
	@npx prettier . --write
install:
	@npm install

test:
	@npx jest

ci: install fmt build test
