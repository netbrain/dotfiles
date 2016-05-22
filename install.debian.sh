#!/bin/bash -xe
sudo apt-get update

#BASE INSTALL
read -r -d '' PACKAGES << EOM #Packages to install
git
aria2c
make
EOM
echo $PACKAGES | xargs sudo -E apt-get install -y

#APT-FAST
git clone https://github.com/ilikenwf/aptfast /tmp/aptfast
cd /tmp/aptfast
make install

#FAST BASE INSTALL
read -r -d '' PACKAGES << EOM #Packages to install
acpi
acpid
build-essential
curl
fonts-dejavu
fonts-dejavu-core
fonts-dejavu-extra
fonts-inconsolata
fonts-vlgothic
i3
strace
sudo
ttf-dejavu
ttf-dejavu-core
ttf-dejavu-extra
vim-nox
xorg
xclip
feh
compton
tmux
xbindkeys
xterm
wicd-gtk
EOM
echo $PACKAGES | xargs sudo -E apt-fast install -y

#DOCKER INSTALL
curl -sSL https://get.docker.com/ | sudo sh
sudo adduser $USER docker

DEVPATH=$HOME/dev
BINPATH=$HOME/bin
TOOLSPATH=$HOME/tools
mkdir -p $DEVPATH $BINPATH $TOOLSPATH
