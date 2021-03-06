FROM node:10-alpine

# Create app directory
WORKDIR /home/wilson/Desktop/Crypto/LNPaymentRequestParser/

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
#RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]

# How to run 
# sudo docker build -t slamtrade/docker_web_app .
# sudo docker run -p 8080:8080 -d slamtrade/docker_web_app
# sudo docker logs a1804cf06242
# sudo docker ps


