FROM node:16

WORKDIR /app

COPY package.json ./

RUN yarn install

COPY . .

EXPOSE 3001

CMD [ "node", "server.js" ]