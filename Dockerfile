# Use an official Node.js runtime as a parent image

FROM node:14
 
# Set the working directory in the container

WORKDIR /app
 
# Copy the current directory contents into the container at /app

COPY . /app
 
# Install any needed packages specified in package.json

RUN npm install
 
# Make port 8080 available to the world outside this container

EXPOSE 8081
 
# Run app.js using node when the container launches

CMD ["node", "app.js"]
