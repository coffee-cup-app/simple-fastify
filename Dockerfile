FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

COPY package.json package-lock.json ./

asdfadsf

# Install deps
RUN npm i

# Bundle app source
COPY . .

# Start
CMD [ "npm", "start" ]
