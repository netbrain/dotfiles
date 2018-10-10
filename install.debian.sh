#!/bin/bash -xe

#BASE SYSTEM
su -l -c "cd $PWD && apt-get update && cat install.debian.packages | xargs apt-get install -y"

#DOCKER INSTALL
#curl -sSL https://get.docker.com/ | sudo sh
#sudo adduser $USER docker

#DEVPATH=$HOME/dev
#BINPATH=$HOME/bin
#TOOLSPATH=$HOME/tools
#mkdir -p $DEVPATH $BINPATH $TOOLSPATH
