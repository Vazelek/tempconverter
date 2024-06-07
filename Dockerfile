# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Update all packages and install dependencies
RUN apt-get update && apt-get upgrade -y && \
    pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variables
ENV DB_USER=db_user
ENV DB_PASS=passsword
ENV DB_HOST=db
ENV DB_NAME=db_name
ENV STUDENT=Valentin Hervé
ENV COLLEGE=Algebra

# Run app.py when the container launches
CMD ["python", "app.py"]

