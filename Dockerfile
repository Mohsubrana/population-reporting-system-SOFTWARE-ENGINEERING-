# Use the official Node.js 14 image
FROM node:14

# Create and change to the app directory
WORKDIR /app

# Copy application dependency manifests to the container image.
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose the port on which the app runs
EXPOSE 3000

# Run the app with a delay
CMD ["sh", "-c", "sleep 10 && npm start"]
