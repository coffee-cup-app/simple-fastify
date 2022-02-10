FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

COPY package.json package-lock.json ./

# Install deps
RUN npm i

a

# Bundle app source
COPY . .

# Start
CMD [ "npm", "start" ]
