FROM python:3.11-slim AS builder
# Set the working directory in the container to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
COPY . .
# Install build dependencies 
RUN pip install --upgrade pip && \ 
    pip install --target=/app requests pygithub


# Set the PYTHONPATH to /app to ensure the Python interpreter can find our application
ENV PYTHONPATH /app

# Define the command to run the application
ENTRYPOINT ["python3", "/app/main.py"]

