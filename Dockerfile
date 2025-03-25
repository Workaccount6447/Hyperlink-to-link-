# syntax=docker/dockerfile:1

# Use the official Python image as a base
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /Hyperlink-to-link-

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application files
COPY . /Hyperlink-to-link-

# Expose the port your app runs on
EXPOSE 8000

# Command to run your application
CMD ["python", "app.py"]
