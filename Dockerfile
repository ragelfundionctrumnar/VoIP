FROM docker.io/library/node:alpine

# Choose the port 
EXPOSE 3000:3000

# Environment variables
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin

# Install app dependencies
WORKDIR /home/node/app
COPY package*.json .
RUN npm install 

# Install app 
COPY . .
RUN chown -R node:node .
USER node

CMD [ "node", "app.js" ]
