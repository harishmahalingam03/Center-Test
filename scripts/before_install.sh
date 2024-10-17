#!/bin/bash

# Function to install AWS CLI
install_aws_cli() {
    if ! command -v aws &> /dev/null; then
        echo "AWS CLI not found. Installing..."
        # Install AWS CLI v2
        curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
        unzip awscliv2.zip
        sudo ./aws/install
        echo "AWS CLI installed successfully."
    else
        echo "AWS CLI is already installed."
    fi
}

# Install AWS CLI
install_aws_cli

# Hard-coded AWS CLI configuration
AWS_ACCESS_KEY_ID="AKIAT567PXHKR6GDO6VC"
AWS_SECRET_ACCESS_KEY="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"
AWS_REGION="us-east-1"
AWS_OUTPUT_FORMAT="json"

# Configure AWS CLI
aws configure set aws_access_key_id "$AWS_ACCESS_KEY_ID"
aws configure set aws_secret_access_key "$AWS_SECRET_ACCESS_KEY"
aws configure set region "$AWS_REGION"
aws configure set output "$AWS_OUTPUT_FORMAT"

echo "AWS CLI configured successfully."

# Stop the currently running Docker container
docker stop aura-frontend || true
docker rm aura-frontend || true
