# Base image
FROM python:3.9-slim

# set working directory in the container
WORKDIR /app

# copy the requirements file into the container
COPY requirements.txt .

# install dependencies in requirements file
RUN pip3 install --no-cache-dir -r requirements.txt

# copy weather_dashboard app to container
COPY . .

# setup environment variables
ENV ENV_FILE=.env

# Expose the port your application runs on (optional if it's a web service)
EXPOSE 8000

# Run the weather_dashboard app
CMD ["python3". "src/weather_dashboard.py"]
