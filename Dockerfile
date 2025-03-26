# Use an official Python runtime as a parent image
FROM python:3.11-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . /Hyperlink-to-link

# Set environment variables (if needed, replace with your actual values)
ENV BOT_TOKEN="YOUR_BOT_TOKEN"
ENV CHANNEL_ID="-1001234567890"  # Example, replace with your actual channel ID

# Command to run the application
CMD ["python", "your_script_name.py"]  # Replace "your_script_name.py"
