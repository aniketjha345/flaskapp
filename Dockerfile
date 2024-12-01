FROM python:3-alpine3.20

WORKDIR /app

COPY . /app

# Install necessary build tools
RUN apk add --no-cache \
    gcc \
    g++ \
    musl-dev \
    libffi-dev \
    openssl-dev \
    build-base \
    python3-dev

# Upgrade pip and install dependencies
RUN pip install --upgrade pip && \
    pip install --only-binary=:all: -r requirements.txt
