FROM python:3.12-slim

# Set a working directory within the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the main FastAPI application code
COPY main.py .

# Expose the port FastAPI will run on
EXPOSE 8000

# Run the FastAPI app using uvicorn
CMD ["uvicorn", "main:datetime_app", "--host", "0.0.0.0", "--port", "8000"]
