# Use the official Node.js v14.x LTS image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which the Express server will run
EXPOSE 3000

# Start the Express server when the container is launched
CMD [ "node", "app.js" ]


# docker build -t my-express-app .
# docker run -p 3000:3000 my-express-app
