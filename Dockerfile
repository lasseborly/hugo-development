FROM debian:sid

MAINTAINER contact@lasseborly.dk

RUN apt-get -qq update && apt-get install -qq -y hugo

RUN mkdir /project
WORKDIR /project/site

EXPOSE 1313
