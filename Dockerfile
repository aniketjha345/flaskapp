# Use the Python Alpine base image
FROM python:3-alpine3.20

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install build dependencies
RUN apk add --no-cache \
    gcc \
    g++ \
    musl-dev \
    libffi-dev \
    openssl-dev \
    make

# Install Python dependencies
RUN pip install --upgrade pip && pip install -r requirements.txt

# Set the command to run your app (replace with your app's entry point)
CMD ["python", "app.py"]
