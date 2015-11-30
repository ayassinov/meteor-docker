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

#set the app folder
VOLUME /tmp/app
WORKDIR /tmp/app

#expose the port of meteor server
EXPOSE 3000

#launch metor build and server
CMD ["meteor"]
