FROM ubuntu:14.04

MAINTAINER Andrei Gladkyi <arg@arglabs.net>

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt-get -qq update
RUN apt-get install -y -qqy software-properties-common 

RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get -qq update
RUN apt-get install -y -qqy git-core curl nodejs phantomjs

RUN curl -sSL https://get.rvm.io | bash -s stable --ruby
RUN echo "source /usr/local/rvm/scripts/rvm" >> /etc/bash.bashrc
ADD gemrc /etc/gemrc
