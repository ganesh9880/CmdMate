FROM python:3.9-slim

WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    procps \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Expose port
EXPOSE 5000

# Create non-root user
RUN useradd -m -u 1000 cmdmate && chown -R cmdmate:cmdmate /app
USER cmdmate

# Start the application
CMD ["python", "terminal.py", "--web", "--host", "0.0.0.0"]
