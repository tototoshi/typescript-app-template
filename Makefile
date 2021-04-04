.PHONY: all run build fmt install watch

all: install fmt build run

run:
	@node dist/index.js
build:
	@npx tsc
watch:
	@npx tsc -w
fmt:
	@npx prettier . --write
install:
	@npm install

test:
	@npx jest

ci: install fmt build test
