FROM node:19.2-alpine3.16

WORKDIR /app

COPY package.json ./

COPY app.js ./

RUN npm install

# RUN npm start
CMD ["npm", "start"]

#docker build --tag cron-ticker .
#docker container run cron-ticker
#docker image tag cron-ticker cron-ticker:1.0.0