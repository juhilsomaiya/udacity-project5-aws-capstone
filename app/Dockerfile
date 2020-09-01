FROM node:10.15.0-alpine

RUN apk update && apk add openssh vim bash --no-cache

WORKDIR /tmp

COPY package.json /tmp/

RUN npm install express@4.17.1

WORKDIR /usr/src/app

COPY . /usr/src/app/

RUN cp -a /tmp/node_modules /usr/src/app/

EXPOSE 80

CMD ["bash","docker_start.sh"]