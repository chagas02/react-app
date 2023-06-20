FROM node:14-alpine

WORKDIR /app

COPY package.json package-lock.json /app/

RUN npm install

COPY . .

RUN npm run build

EXPOSE 300

CMD [ "npm", "start"]
