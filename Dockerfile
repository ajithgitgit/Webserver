# Use the official Node.js image.
FROM node:14

# Set the working directory in the container.
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available).
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files into the container.
COPY . .

# Expose the app port (assuming the app runs on port 3000).
EXPOSE 3000

# Start the app (update 'app.js' to the correct entry point file name for your project).
CMD ["node", "node.js"]
