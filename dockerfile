# Use official Node image
FROM node:20-bookworm

# Install system deps
RUN apt-get update && \
    apt-get install -y git curl && \
    rm -rf /var/lib/apt/lists/*

# Clone your starter & install JS deps
WORKDIR /root
RUN git clone https://github.com/PratyakshGupta48/one0-expo-starter.git
WORKDIR /root/one0-expo-starter
RUN npm ci

# Default command when container runs
# CMD ["/bin/bash", "-c", "npx expo start --tunnel || true && while true; do sleep 30; done"]
