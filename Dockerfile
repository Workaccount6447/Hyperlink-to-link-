# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and the bot code into the container
COPY requirements.txt ./
COPY Link.py ./

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the bot
CMD ["python", "Link.py"]
