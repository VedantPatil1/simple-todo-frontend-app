FROM node:20-alpine

COPY ./app /app

WORKDIR /app

EXPOSE 3000