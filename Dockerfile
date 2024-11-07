# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install FastAPI and Uvicorn
RUN pip install fastapi uvicorn

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run app with Uvicorn on container startup
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "3000"]