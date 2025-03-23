# Use the official Node.js image.
FROM node:14

# Set the working directory in the container.
WORKDIR /usr/src/app

# Copy the application files.
COPY package*.json ./
RUN npm install
COPY . .

# Expose the app port.
EXPOSE 3000

# Start the app.
CMD ["node", "node.js"]
