#!/bin/bash

# Stop and remove the existing container
docker stop aura-frontend || true
docker rm aura-frontend || true

# Pull the latest image
docker pull 270514764245.dkr.ecr.us-east-1.amazonaws.com/aura-frontend:latest

# Run the new container
docker run -d --name aura-frontend 270514764245.dkr.ecr.us-east-1.amazonaws.com/aura-frontend:latest
