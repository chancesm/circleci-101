FROM node:10

# install dependencies in root directory
WORKDIR /app
COPY . /app

RUN npm install
EXPOSE 3000

# Run tests
CMD  ["npm","start"]
