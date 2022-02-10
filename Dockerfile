FROM node:alpine

# Create app directory
WORKDIR /usr/src/app

COPY package.json package-lock.json ./

# Install deps
RUN npm i

# Bundle app source
COPY . .

a

# Start
CMD [ "npm", "start" ]
