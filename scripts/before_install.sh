#!/bin/bash

# Stop the currently running Docker container
docker stop aura-frontend || true
docker rm aura-frontend || true
