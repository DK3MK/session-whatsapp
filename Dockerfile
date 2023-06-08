FROM node:latest
FROM node:lts-buster
FROM nikolaik/python-nodejs:python3.9-nodejs18


RUN apt-get update && \
  apt-get install -y \
  python \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "."]
