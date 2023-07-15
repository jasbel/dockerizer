# FROM --platform=linux/amd64 node:19.2-alpine3.16
FROM node:19.2-alpine3.16 as deps
WORKDIR /app
COPY package.json ./
RUN npm install

FROM node:19.2-alpine3.16 as builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
RUN npm run test

FROM node:19.2-alpine3.16 as prod-deps
WORKDIR /app
COPY package.json ./
RUN npm install --prod

FROM node:19.2-alpine3.16 as runner
WORKDIR /app
COPY --from=prod-deps /app/node_modules ./node_modules
COPY app.js ./
COPY tasks/ ./tasks
CMD ["npm", "start"]

#docker build --tag cron-ticker .
#docker container run cron-ticker
#docker image tag cron-ticker cron-ticker:1.0.0
# FROM --platform=arm
# dokcer buildx create --name mybuilder --driver docker-container --bootstrap