FROM node:14

WORKDIR /usr/src/app

# install app dependencies
COPY package.json .

COPY package-lock.json .

COPY . .

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]