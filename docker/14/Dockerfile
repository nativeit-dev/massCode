FROM node:14

# Install dependencies
RUN apt-get update && apt-get install -y \
  git \
  make \
  && rm -rf /var/lib/apt/lists/*

# Clone the project repository
RUN git clone -b dev https://github.com/nativeit-dev/massCode /usr/src/app

# Set the working directory
WORKDIR /usr/src/app

# Install project dependencies
RUN npm install

# Build the project using the Makefile
RUN make all

# Command to run the Electron app
CMD ["npm", "start"]
