# Use the official Node.js 18 LTS (Hydrogen) image as the base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of your application code to the working directory
COPY . .

# Expose the port your Node.js application listens on (adjust if needed)
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]