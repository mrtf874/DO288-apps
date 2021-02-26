# Base Image
FROM registry.connect.redhat.com/storageos/node

# Set working directory
WORKDIR /app

# Copy project files
COPY package*.json ./

COPY ./dist ./dist

# install node packages
RUN npm set progress=false && npm config set depth 0
RUN npm install

# expose port and define CMD
EXPOSE 5000
CMD ["npm", "start"]
