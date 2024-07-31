# Use the official Node.js 20 image
FROM node:20

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port the application runs on
EXPOSE 3000

# Build the NestJS application
RUN npm run build

# Start the NestJS application
CMD [ "npm", "run", "start:prod" ]
