FROM node:9

WORKDIR /var/www
ADD . /var/www

RUN npm install -g yarn

RUN cp .env.dist .env
RUN sudo yarn install
RUN sudo yarn run build

RUN chown -R node:node /var/www
