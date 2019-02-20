FROM node:10

# install dependencies in root directory
WORKDIR /root
ADD package.json /root
ADD package-lock.json /root
RUN npm install
EXPOSE 3000

# Run tests
CMD  "npm start"
