FROM node:22-alpine

WORKDIR /app

# Copy the package.json file into the container
COPY package.json .

# Install dependancies
RUN npm i

# Copy the current directory contents into the container at /app
COPY . /app

# Set environment variable
ENV PORT=8000

# Make port $PORT available to the world outside this container
EXPOSE ${PORT}

# Build app
RUN npm run build

# Run the server when the container launches
CMD npm run start:prod
