#!/bin/bash

# Make the script executable
chmod +x run.sh

# Build and start the containers
docker build -t labourer_web .
docker run -d -p 8000:8000 --name labourer_web labourer_web

echo "Site running at: http://localhost:8000/"

# To stop the containers, press Ctrl+C 