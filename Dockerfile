FROM node:alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

ONBUILD COPY ./myweb/package.json /usr/src/app/

ONBUILD RUN npm install

ONBUILD COPY ./myweb /usr/src/app

CMD [ "npm", "start" ]


