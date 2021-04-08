FROM node:latest as node
RUN mkdir -p /app
WORKDIR /app
COPY package*.html /app/
COPY . /app/
EXPOSE 4200
