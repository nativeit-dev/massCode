# Makefile for Electron project

# Define variables
APP_NAME = massCode
SRC_DIR = src
BUILD_DIR = build
DIST_DIR = dist

# Define commands
ELECTRON = ./node_modules/.bin/electron
ELECTRON_PACKAGER = ./node_modules/.bin/electron-packager

# Default target
all: install build package

# Install dependencies
install:
  npm install

# Build the project
build:
  npm run build

# Package the Electron app
package:
  $(ELECTRON_PACKAGER) $(BUILD_DIR) $(APP_NAME) --out=$(DIST_DIR)

# Clean the build and dist directories
clean:
  rm -rf $(BUILD_DIR) $(DIST_DIR)

# Run the Electron app
run:
  $(ELECTRON) .

.PHONY: all install build package clean run
