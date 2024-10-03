#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull danielzerihon/python-first-build-code:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 danielzerihon/python-first-build-code:latest
