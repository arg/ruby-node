FROM ubuntu:14.04

MAINTAINER Andrei Gladkyi <arg@arglabs.net>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update

RUN apt-get install -y -qq software-properties-common git-core

RUN add-apt-repository -y ppa:brightbox/ruby-ng
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get -qq update
RUN apt-get install -y -qq ruby2.1 ruby2.1-dev nodejs
RUN gem install bundler
