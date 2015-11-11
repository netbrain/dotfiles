SHELL := /bin/bash

default:
	for file in $(shell find . -type f | egrep -v "^./(.git/)|(Makefile)"); do \
		f=$$(echo $${file:2}); \
		src=$$(echo $$PWD/$$f); \
		dst=$$(echo $$HOME/$$f); \
		test -f $$dst && rm -i $$dst;  \
		bash -x -c "mkdir -p $$(dirname $$dst) && ln -s $$src $$dst"; \
	done
