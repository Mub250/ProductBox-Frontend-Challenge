FROM node:10-alpine
RUN mkdir -p /home/ubuntu/tazah-testing/node_modules && chown -R node:node /home/ubuntu/tazah-testing
WORKDIR /home/ubuntu/tazah-testing
COPY  package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 4000
CMD  ["node" , "server.js"]
