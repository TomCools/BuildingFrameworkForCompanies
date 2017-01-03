FROM node:slim

ENV PORT=9000
EXPOSE $PORT

RUN useradd -ms /bin/bash docker

RUN npm install -g yo generator-reveal-infosupport grunt-cli \
 && npm cache clear

RUN mkdir /home/docker/slides \
 && chown docker:docker /home/docker/slides


WORKDIR /home/docker/slides

ADD .yo-rc.json .
RUN chown docker:docker .yo-rc.json

USER docker


VOLUME [/home/docker/slides]

 
CMD grunt serve --port=$PORT
