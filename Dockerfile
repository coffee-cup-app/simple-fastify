FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

COPY package.json yarn.lock ./

# Install deps
RUN npm i

# Bundle app source
COPY . .

# Start
CMD [ "npm", "start" ]
