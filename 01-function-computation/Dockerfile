#use a lightweight Linux base image with bash
FROM alpine:latest

# Install bash and core utilities
RUN apk add --no-cache bash

# Create working directory
WORKDIR /app

# Copy scripts into the container
COPY compute_while.sh .
COPY compute_for.sh .

# Make scripts executable
RUN chmod +x compute_while.sh compute_for.sh

# Default command (you can override with docker run arguments)
CMD ["bash"]
