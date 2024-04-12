# Use a lightweight base image; alpine is a good choice
FROM alpine:latest

# Install curl and other utilities you might need
RUN apk add --no-cache curl

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the README.md file into the container at /usr/src/app
COPY README.md .

# Ensure when the container starts, it stays running
CMD tail -f /dev/null
