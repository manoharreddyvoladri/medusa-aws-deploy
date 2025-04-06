FROM node:18-alpine

WORKDIR /app

RUN npm install -g @medusajs/medusa-cli

RUN medusa new medusa-backend --starter

WORKDIR /app/medusa-backend

RUN npm install

CMD ["npm", "run", "start"]
