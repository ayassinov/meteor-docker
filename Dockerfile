FROM ubuntu:latest
MAINTAINER ayassinov <yassine2004@gmail.com>

#update ubuntu and install mandatory libs and tools
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get clean

#install meteor
RUN curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh
