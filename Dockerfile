FROM node:latest

RUN apt-get update && \
  apt-get install -y \
  apt-get upgrade -y && \*

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "index.js"]
