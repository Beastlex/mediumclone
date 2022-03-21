FROM node:16.14-alpine

WORKDIR /app
COPY --chown=node:node package.json .
RUN npm install --legacy-peer-deps

COPY --chown=node:node . .
RUN npm run build

USER node

CMD ["npm", "run", "start:prod"]