#!/bin/bash -xe

#BASE SYSTEM
su -l -c "apt-get update && apt-get install sudo && adduser $USER sudo"
su -l -c "cd $PWD && cat install.debian.packages | xargs apt-get install -y"

su -l -c "curl -fsSL https://get.docker.com | sh && adduser $USER docker"


