FROM debian:jessie

#DEPS
RUN apt-get update && apt-get install -y sudo

#ADD NORMAL USER
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker

#USER ENV
ENV HOME /home/docker
ENV TOOLS_PATH $HOME/tools
ENV DEV_PATH $HOME/dev

RUN mkdir -p $TOOLS_PATH $DEV_PATH $HOME/bin
WORKDIR $TOOLS_PATH
