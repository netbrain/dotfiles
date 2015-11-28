SHELL := /bin/bash

default:
	for file in $(shell find . -type f | egrep -v "^./(etc/)|(.git/)|(.gitignore)|(Makefile)|(.*\.swp)"); do \
		f=$$(echo $${file:2}); \
		src=$$(echo $$PWD/$$f); \
		dst=$$(echo $$HOME/$$f); \
		test -f $$dst && rm -i $$dst;  \
		bash -x -c "mkdir -p $$(dirname $$dst) && ln -s $$src $$dst"; \
	done
	for file in $(shell find ./etc/ -type f | egrep -v "^./(.*\.swp)"); do \
		f=$$(echo $${file:2}); \
		src=$$(echo $$PWD/$$f); \
		dst=$$(echo /$$f); \
		bash -x -c "sudo mkdir -p $$(dirname $$dst) && sudo cp -i $$src $$dst && sudo chmod 0640 $$dst"; \
	done

