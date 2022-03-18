FROM node:16.14-alpine

WORKDIR /app
COPY --chown=node:node package.json .
RUN npm install

USER node
COPY --chown=node:node . .

CMD ["npm", "start:prod"]