FROM node:18-alpine3.15

WORKDIR /app

ENV HOST 0.0.0.0

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["node", "index.js"]