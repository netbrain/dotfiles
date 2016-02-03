#!/bin/bash
set -e

BASE_PATH=$(realpath `dirname $0`)


link_home(){
cd $BASE_PATH/home
for f in $(ls -1A .); do
	OUT=$HOME/$f
	if test -e $OUT || test -L $OUT; then
		echo "File $OUT exists, overwrite?"
		select yn in "Yes" "No"; do
    			case $yn in
				Yes ) ln -s -f $(realpath -s --relative-to="$HOME" $f) $OUT; break;;
        			No ) break;;
    			esac
		done
	else
		ln -s -f $(realpath -s --relative-to="$HOME" $f) $OUT
	fi
done
}

merge_root(){
	cd $BASE_PATH/root
	sudo chown -R root.root .
	for f in $(find . -type f); do
		OUT=/$(realpath -s --relative-to="/" /$f)
		sudo mkdir -p $(dirname $OUT)
		if test -e $OUT; then 
			echo "File $OUT exists, overwrite?"
			select yn in "Yes" "No"; do
				case $yn in
					Yes ) sudo ln -s -f $(realpath -s $f) $OUT; break;;
					No ) break;;
				esac
			done
		else
			sudo ln -s -f $(realpath -s $f) $OUT
		fi
	done
}

link_home
merge_root
