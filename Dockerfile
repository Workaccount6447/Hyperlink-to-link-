
FROM python:3.11-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . /app  # Changed to /app for consistency

# Set environment variables (if needed, replace with your actual values)
ENV BOT_TOKEN="7140932110:AAES0E-TDdzh0yW-8UTtm52-EADWtkxuawU"
ENV CHANNEL_ID="-1002357568043" 

# Command to run the application
CMD ["python", "link.py"]  # Ensure the filename matches
