FROM node:14-alpine AS builder

# Create app directory
WORKDIR /obs/src

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]