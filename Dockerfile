# Specify the base image
FROM node:19-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm ci --omit=dev
RUN npm install knex pg

# Copy the rest of the application code
COPY . .

COPY entrypoint.sh ./

RUN chmod +x ./entrypoint.sh 

# Expose the port that the application listens on
EXPOSE 3000

# Start the application
CMD ["./entrypoint.sh"]