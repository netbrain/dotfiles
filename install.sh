#!/bin/bash
set -e

BASE_PATH=$(realpath `dirname $0`)

link_home(){
	cd $BASE_PATH/home
	for file in $(find . -type f); do \
		f=${file:2}
		src=$PWD/$f
		dst=$HOME/$f
		test -f $dst && rm -i $dst
		mkdir -p $(dirname $dst) && ln -s $src $dst
	done
}

merge_root(){
	cd $BASE_PATH/root
	sudo chown -R root.root .
	for file in $(find . -type f); do \
		f=${file:2}
		src=$PWD/$f
		dst=/$f
		sudo test -f $dst && sudo rm -i $dst
		sudo mkdir -p $(dirname $dst) && sudo ln -s $src $dst
	done
}

link_home
merge_root
