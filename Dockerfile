# Use Python 3.11 as the base image
FROM python:3.11

# Set working directory
WORKDIR /app
# Copy requirements file
COPY requirements.txt .

# Install Python dependencies
RUN pip install  -r requirements.txt

# Copy project files
COPY . .

# Expose port
EXPOSE 5000

# Run the application
CMD ["python3","-m","flask", "run", "--host=0.0.0.0"] 