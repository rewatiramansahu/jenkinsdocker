#!/bin/bash

# Set your Docker Hub credentials
DOCKER_USERNAME='rewatiramansahu'   # Username passed as the first argument
DOCKER_PASSWORD='Rewatiraman22!'   # Password passed as the second argument
#SECRET_KEY="sahu" 
#ENCRYPTED_PASSWORD="U2FsdGVkX18Y5f1IINMM3lb1yHWRbi3gSnTWVe3yP5U="

# Decrypt the Docker Hub password

#DOCKER_PASSWORD=$(echo "$ENCRYPTED_PASSWORD" | openssl enc -aes-256-cbc -d -a -pass pass:"$SECRET_KEY")

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
