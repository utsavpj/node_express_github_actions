# Use an official nodejs runtime as a parent image
FROM node:latest

# Set the working directory in the container
WORKDIR /home/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy the Application source files
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD [ "node", "server.js" ]