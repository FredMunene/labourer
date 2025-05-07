#!/bin/bash

# Make the script executable
chmod +x run.sh

# Build and start the containers
docker-compose up --build

# To stop the containers, press Ctrl+C 