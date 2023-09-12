# Use an official Node.js image as the base
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Install Gulp
RUN npm install gulp-cli -g

# Expose the port on which the Gulp application will run
EXPOSE 3000

# Define the command to run when the container starts
CMD [ "gulp" ]


# docker build . -t stagecentral-website

# docker run -it -v .:/app -p 3000:3000  stagecentral-website 
