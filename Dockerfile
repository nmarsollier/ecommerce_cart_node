# Use node 
FROM node:14.3.0

# Copy source code
COPY . /app

# Change working directory
WORKDIR /app

# Install dependencies
RUN npm install

# Expose API port to the outside
EXPOSE 3003

# Launch application
CMD ["npm","start"]
