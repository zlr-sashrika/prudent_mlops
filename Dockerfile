# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Command to run the application (modify as needed)
CMD ["jupyter", "nbconvert", "--to", "notebook", "--execute","--inplace", "Prudent_3.2(Sentiment_Analysis).ipynb"]