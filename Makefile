# Default target when no arguments are provided
.DEFAULT_GOAL := help

# Help rule
help:
	@echo "Available commands:"
	@echo "  make build     - Build the application"
	@echo "  make server    - Run the server"
	@echo "  make clean     - Remove build artifacts"
	@echo "  make help      - Display this help message"

.PHONY: help

server:
	python3 -m http.server

build:
	npm run build

clean:
	rm -rf dist

deploy:
	npm run deploy					

.PHONY: server build clean deploy