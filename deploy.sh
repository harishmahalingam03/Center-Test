#!/bin/bash

# Stop and remove the existing container
docker stop your-container || true
docker rm your-container || true

# Pull the latest image
docker pull <your-account-id>.dkr.ecr.your-region.amazonaws.com/your-repo:latest

# Run the new container
docker run -d --name your-container <your-account-id>.dkr.ecr.your-region.amazonaws.com/your-repo:latest
