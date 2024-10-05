#!/bin/bash

# Set your Docker Hub credentials
DOCKER_USERNAME='raghuopsdev'   # Username passed as the first argument
DOCKER_PASSWORD='test123test'   # Password passed as the second argument

# Log in to Docker Hub
echo "Logging in to Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

# Check the login status
if [ $? -eq 0 ]; then
    echo "Login successful!"
else
    echo "Login failed!"
    exit 1
fi
