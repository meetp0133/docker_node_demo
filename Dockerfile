# syntax=docker/dockerfile:1

FROM node:13-alpine

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node","app.js"]