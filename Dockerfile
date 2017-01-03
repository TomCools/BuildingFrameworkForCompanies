FROM node:slim

RUN useradd -ms /bin/bash docker

RUN apt-get update \
 && apt-get install -y -qq git
 
RUN npm install -g bower yo generator-reveal-infosupport grunt-cli \
 && npm cache clear

RUN mkdir /home/docker/slides \
 && chown docker:docker /home/docker/slides


WORKDIR /home/docker/slides

ADD .yo-rc.json .
RUN chown docker:docker .yo-rc.json

USER docker


VOLUME [/home/docker/slides]

 
CMD grunt serve

EXPOSE $PORT
