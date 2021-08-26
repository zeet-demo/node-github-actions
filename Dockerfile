FROM node:current

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY . ./

EXPOSE 3000
CMD ["node", "./bin/www"]
