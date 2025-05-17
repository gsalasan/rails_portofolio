# Use ARM-compatible Ruby image
FROM --platform=linux/arm64 ruby:3.2.2-slim-bookworm

# Install ARM-compatible dependencies
RUN apt-get update -qq && \
    apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*