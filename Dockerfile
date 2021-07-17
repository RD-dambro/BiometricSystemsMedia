FROM node:latest

# Create app directory
WORKDIR /usr/src/media

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY ./app.js .

EXPOSE 8000 1935
CMD [ "node", "app.js" ]
