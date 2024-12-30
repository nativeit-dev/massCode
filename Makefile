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

# Run dev server
devserver:
	npm run dev:server

# Run lint
lint:
	npm run lint

# Run lint fix
lint-fix:
	npm run lint:fix

# Run tests
test:
	npm run build:test && npm run ts-check:vue

# Install dependencies
install:
	npm install -g pnpm husky only-allow && npx only-allow pnpm && pnpm install

# Check the project
build:
	npm run copy:plist && npm run build:ts && pnpm run build

# Package the Electron app
package:
	$(ELECTRON_PACKAGER) $(BUILD_DIR) $(APP_NAME) --out=$(DIST_DIR)

# Clean the build and dist directories
clean:
	rm -rf $(BUILD_DIR) $(DIST_DIR) node_modules

# Run the Electron app
run:
	$(ELECTRON) .

.PHONY: all devserver lint lint-fix test install build package clean run
