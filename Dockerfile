# Use an official Python runtime as the base image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file and install the dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the application code into the container
COPY . .

# Set the environment variable for Flask
ENV FLASK_APP=your_app_name.py

# Expose the port that your Flask app will listen on
EXPOSE 5000

# Specify the command to run when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]
