FROM ubuntu:latest
MAINTAINER ayassinov <yassine2004@gmail.com>

#update ubuntu and install mandatory libs and tools
RUN apt-get update && apt-get install -y \
    curl \
    language-pack-en \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

#install meteor
RUN curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh
