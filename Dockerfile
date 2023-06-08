FROM node:latest
FROM node:lts-buster
FROM nikolaik/python-nodejs:python3.9-nodejs18

unzip node_modules.zip

COPY package.json .

RUN npm install
RUN npm install qrcode

COPY . .

CMD ["node", "."]
