# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt \
    && pip install --no-cache-dir jupyter

# Copy the rest of the application code into the container
COPY . .

# Command to run the notebook
CMD ["jupyter", "nbconvert", "--to", "notebook", "--execute", "notebooks/Prudent.ipynb", "--output", "prudent.ipynb"]
