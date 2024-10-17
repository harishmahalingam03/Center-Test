#!/bin/bash


# Pull the latest Docker image from ECR
docker pull 270514764245.dkr.ecr.$AWS_REGION.amazonaws.com/aura-frontend:latest

# Run the container
docker run -d --name aura-frontend 270514764245.dkr.ecr.$AWS_REGION.amazonaws.com/aura-frontend:latest

echo "Docker container started successfully."

