# FROM --platform=linux/amd64 node:19.2-alpine3.16
FROM node:19.2-alpine3.16

WORKDIR /app

COPY package.json ./

COPY app.js ./

RUN npm install

# Dest /app
COPY . .

# Testing
RUN npm run test

# remove file inncecesaria
RUN rm -rf test &&  rm -rf node_modules

RUN npm install --prod

CMD ["npm", "start"]

#docker build --tag cron-ticker .
#docker container run cron-ticker
#docker image tag cron-ticker cron-ticker:1.0.0
# FROM --platform=arm
# dokcer buildx create --name mybuilder --driver docker-container --bootstrap