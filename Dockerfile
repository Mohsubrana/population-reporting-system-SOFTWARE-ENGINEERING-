#This uses the official Node.Js image from the docker hub
FROM node:14

#This sets up the working directory inside the container
WORKDIR /app

#This copies the package.json and package-lock.json
COPY package*.json ./

#this installs deppendieces
RUN npm install

#this copies the rest of the application code
COPY . .

#this exposes the port the appication runs on
EXPOSE 3000

#this is just the run command for the application
CMD ["npm", "start"]
