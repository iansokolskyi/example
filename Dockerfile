FROM node:16

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . /app

ARG PORT

ENV PORT=$PORT

EXPOSE 3000

CMD ["npm", "start"]